const Category = require('../models/Category')
const MobileProduct = require('../models/MobileProduct')
const LaptopProduct = require('../models/LaptopProduct')
const GroceryProduct = require('../models/GroceryProduct')
const HouseholdProduct = require('../models/HouseholdProduct')

const productController = async (req, res) => {
    const pages = ['household', 'laptop', 'mobile', 'grocery']
    const tabels = [HouseholdProduct, LaptopProduct, MobileProduct, GroceryProduct]
    const id = /^product-0\d{3}$/.test(req.params.id) ? parseInt(req.params.id.slice(9)) : null
    const product_id = id % 100
    const category_id = ( id - product_id ) / 100
    const categories = await Category.findAll({})
    const product = category_id ? await tabels[category_id - 1].findByPk(product_id) : null
    if( product ) {
        let priceId = null
        let prices = product.price.split(' - ').map(item => item)
        product.dataValues.color = product.dataValues.color && !product.dataValues.color.includes('No color') ? 
            product.color.split(' - ').map(item => item) : undefined
        if( product.color ){
            product.availableColor = req.query.color || product.color[0]
            product.color.map((item, id) => { if( product.availableColor == item ) { priceId = id } })
        }
        else if ( !product.color && !req.query.color ) { priceId = 0 }
        product.dataValues.price = Number.isInteger(priceId) ? `${prices[priceId]} T` : 'Unknown'
        res.render(`categories/${pages[category_id - 1]}`,{
            path: '/shop',
            product: product,
            categories: categories.map(category => {
                return {
                    name: category.name,
                    slug: category.slug
                }
            })
        })
    }
    else {
        res.render('error/not-found')
    }
}
  
module.exports = productController