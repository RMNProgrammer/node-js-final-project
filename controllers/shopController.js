const Category = require('../models/Category')

const shopController = async (req, res) => {
    const categories = await Category.findAll({})
    res.render('shop',{
        path: '/shop',
        categories: categories
    })
}
  
module.exports = shopController