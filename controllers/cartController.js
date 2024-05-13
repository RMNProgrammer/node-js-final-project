const ejs = require('ejs')
const path = require('path')
const User = require('../models/User')
const Cart = require('../models/Cart')
const sendMail = require('../utils/sendMail')
const Category = require('../models/Category')

const get = async (req, res) => {
    if( req.user ){
        const categories = await Category.findAll({})
        const cart = await Cart.findAll({
            where: {
                user_id: req.user.id,
                status: 'in basket'
            }
        })
        res.render('cart',{
            path: null,
            cart: cart,
            user: req.user,
            flash: req.flash(),
            categories: categories.map(category => {
                return {
                    name: category.name,
                    slug: category.slug
                }
            })
        })
    }
    else { res.render('error/not-found',{ user: req.user }) }
}

const post = async (req, res) => {
    if( req.user ){
        const categories = await Category.findAll({})
        await User.update({
            address: req.body.address
        },{
            where: {
                id: req.user.id
            }
        })
        await Cart.update({
            status: 'paied'
        },{
            where: {
                user_id: req.user.id
            }
        })
        const cart = await Cart.findAll({
            where: {
                user_id: req.user.id,
                status: 'paied'
            }
        })
        req.flash('success','Your purchase has been successfully completed and the purchase receipt has been sent to your email.')
        const html = await ejs.renderFile(path.join(__dirname,'../views/mail/cart.ejs'),{
            cart: cart,
            address: req.body.address,
            title: 'Online shop bill',
            startWith: 'Your purchase receipt: ',
            endWith: 'If the status of the order changes, you will be notified in this way.'
        })
        await sendMail({
            html: html,
            to: req.user.email,
            subject: 'Online shop bill'
        })
        res.render('cart',{
            cart: {},
            path: null,
            user: req.user,
            flash: req.flash(),
            categories: categories.map(category => {
                return {
                    name: category.name,
                    slug: category.slug
                }
            })
        })
    }
    else { res.render('error/not-found',{ user: req.user }) }
}
  
module.exports = {
    get,
    post
}