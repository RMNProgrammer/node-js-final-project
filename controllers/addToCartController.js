const Cart = require('../models/Cart')
const MobileProduct = require('../models/MobileProduct')
const LaptopProduct = require('../models/LaptopProduct')
const GroceryProduct = require('../models/GroceryProduct')
const HouseholdProduct = require('../models/HouseholdProduct')

const addToCartController = async (req, res) => {
    if( req.user && req.query && req.query.categoryId && req.query.productId && ( req.query.categoryId == 4 || req.query.categoryId == 1 && req.query.productId >= 16 || req.query.color ) ){
        const cart = await Cart.findOne({
            where: {
                user_id: req.user.id,
                product_id: req.query.productId,
                category_id: req.query.categoryId,
                color: req.query.color || '-'
            }
        })
        if( cart ){
            await Cart.update({
                quantity: cart.quantity + 1
              },{
                where: {
                  user_id: req.user.id,
                  product_id: req.query.productId,
                  category_id: req.query.categoryId,
                  color: req.query.color || '-'
                },
            })
            res.redirect('/cart')
        }
        else {
            let color_id = 0
            const tabels = [HouseholdProduct, LaptopProduct, MobileProduct, GroceryProduct]
            const id = ( Number(req.query.categoryId) * 100 ) + Number(req.query.productId)
            const product = await tabels[req.query.categoryId - 1].findByPk(req.query.productId)
            product.dataValues.price = product.price.split(' - ').map(item => item)
            if( product.color ){
                product.dataValues.color = product.color.split(' - ').map(item => item)
                product.dataValues.color.map((item, id) => {
                    if( item == req.query.color ){ color_id = id }
                })
            }
            await Cart.create({
                category_id: req.query.categoryId,
                product_id: req.query.productId,
                price: product.price[color_id],
                color: req.query.color || '-',
                image: product.image,
                user_id: req.user.id,
                status: 'in basket',
                name: product.name,
                star: product.star,
                quantity: 1,
            })
            res.redirect(`/shop/product-0${id}`) 
        }
        return
    }
    res.render('error/not-found',{ user: req.user })
}
  
module.exports = addToCartController