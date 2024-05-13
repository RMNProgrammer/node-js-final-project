const { format } = require('date-fns')
const User = require('../models/User')
const Rate = require('../models/Rate')
const Cart = require('../models/Cart')
const Category = require('../models/Category')

const aboutController = async (req, res) => {
    let counter = { users: 0, products: 0, categories: 0, cartProducts: 0 }
    const categories = await Category.findAll({})
    const cart = await Cart.findAll()
    categories.map(item => {
        counter.categories += 1
        counter.products += item.count
    })
    const rates = await Rate.findAll({})
    counter.users = await User.findAndCountAll({})
    cart.map(cartItem => { 
        counter.users.rows.map(userItem => {
            if( userItem.id == cartItem.user_id ){
                counter.cartProducts += cartItem.quantity
            }
        })
    })
    res.render('about',{
        path: '/about',
        user: req.user,
        counter: counter,
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