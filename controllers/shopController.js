const Category = require('../models/Category')

const shopController = async (req, res) => {
    const categories = await Category.findAll({})
    res.render('shop',{
        path: '/shop',
        user: req.user,
        categories: categories
    })
}
  
module.exports = shopController