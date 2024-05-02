const { Op } = require('sequelize')
const Category = require('../models/Category')
const MobileProduct = require('../models/MobileProduct')
const LaptopProduct = require('../models/LaptopProduct')
const GroceryProduct = require('../models/GroceryProduct')
const HouseholdProduct = require('../models/HouseholdProduct')

const homepageController = async (req, res) => {
    let id = 0
    let bestProducts = []
    const categories = await Category.findAll({})
    const tables = [HouseholdProduct, MobileProduct, LaptopProduct, GroceryProduct]
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