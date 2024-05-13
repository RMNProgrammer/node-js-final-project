const { Op } = require('sequelize')
const User = require('../models/User')
const Cart = require('../models/Cart')
const Category = require('../models/Category')
const MobileProduct = require('../models/MobileProduct')
const LaptopProduct = require('../models/LaptopProduct')
const GroceryProduct = require('../models/GroceryProduct')
const HouseholdProduct = require('../models/HouseholdProduct')

const homepageController = async (req, res) => {
    let id = 0
    let counter = { users: 0, products: 0, categories: 0, cartProducts: 0 }
    let bestProducts = []
    const cart = await Cart.findAll()
    const categories = await Category.findAll({})
    counter.users = await User.findAndCountAll({})
    const tables = [HouseholdProduct, MobileProduct, LaptopProduct, GroceryProduct]
    categories.map(item => {
        counter.categories += 1
        counter.products += item.count
    })
    cart.map(cartItem => { 
        counter.users.rows.map(userItem => {
            if( userItem.id == cartItem.user_id ){
                counter.cartProducts += cartItem.quantity
            }
        })
    })
    await Promise.all(
        tables.map(async (tabel) => {
            const products = await tabel.findAll({
                where: {
                    star: {
                        [Op.between]: [4.7, 5]
                    }
                },
                include: Category
            })
            if ( products.length > 0 ){
                products.map((product) => {
                    bestProducts[id] = {
                        id: product.id,
                        name: product.name,
                        image: product.image,
                        star: product.star,
                        price: product.price,
                        category: product.category,
                        properties: product.feature || product.possibilities || product.description,
                    }
                    id += 1
                })
            }
        })
    )
    res.render('index',{
        path: '/',
        user: req.user,
        counter: counter,
        categories: categories.map(category => {
            return {
                name: category.name,
                slug: category.slug
            }
        }),
        products: bestProducts.map(bestProduct => {
            return {
                id: bestProduct.id,
                name: bestProduct.name,
                image: bestProduct.image,
                star: bestProduct.star,
                price: bestProduct.price,
                category: bestProduct.category,
                properties: bestProduct.properties.split(' - ') 
            }
        }),
    })
}
  
module.exports = homepageController