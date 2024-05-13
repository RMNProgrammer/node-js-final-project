const Category = require('../models/Category')
const MobileProduct = require('../models/MobileProduct')
const LaptopProduct = require('../models/LaptopProduct')
const GroceryProduct = require('../models/GroceryProduct')
const HouseholdProduct = require('../models/HouseholdProduct')

const categoryController = async (req, res) => {
    let categoryId = null
    let categoryName = null
    const categories = await Category.findAll()
    categories.map(category => {
        if( category.slug == req.params.name ){
            categoryId = category.id
            categoryName = category.name
        }
    })
    if (categoryId && categoryName){
        const tabels = [HouseholdProduct, LaptopProduct, MobileProduct, GroceryProduct]
        const offset = Number(req.query.page - 1) * 6 || 0
        const products = await tabels[categoryId - 1].findAll({
            limit: 6,
            offset: offset
        })
        res.render('category',{
            path: '/shop',
            user: req.user,
            pages: categories[categoryId - 1].count / 6,
            categoryName: categoryName,
            page: req.query.page || 1,
            categories: categories.map(category => {
                return {
                    name: category.name,
                    slug: category.slug
                }
            }),
            products: products.map(product => {
                return {
                    name: product.name,
                    star: product.star,
                    image: product.image.split(', '),
                    price: product.price.split(', ').map(price =>
                        price.split(' - ').map(price => price) 
                    ),
                    id: ( product.category_id * 100 ) + product.id,
                    properties: product.feature || product.possibilities || product.description 
                }
            }),
        })
    }
    else {
        res.render('error/not-found',{
            user: req.user,
        })
    }
}
  
module.exports = categoryController