const { format } = require('date-fns')
const Rate = require('../models/Rate')
const Category = require('../models/Category')

const aboutController = async (req, res) => {
    const rates = await Rate.findAll({})
    const categories = await Category.findAll({})
    res.render('about',{
        path: '/about',
        rates: rates.map((rate) => {
            return {
                name: rate.name,
                star: rate.star,
                profile: rate.profile,
                description: rate.description,
                date: format(new Date(rate.date), 'EEE dd MMM yy')
            }
        }),
        categories: categories.map(category => {
            return {
                name: category.name,
                slug: category.slug
            }
        })
    })
}
  
module.exports = aboutController