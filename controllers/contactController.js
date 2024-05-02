const { validationResult } = require('express-validator')
const Category = require('../models/Category')
const Message = require('../models/Message')

const get = async (req, res) => {
    const categories = await Category.findAll({})
    res.render('contact',{
        errors: [],
        flash: req.flash(),
        path: '/contact',
        categories: categories.map(category => {
            return {
                name: category.name,
                slug: category.slug
            }
        })
    })
}

const post = async (req, res) => {
    const errors = validationResult(req)
    if(!errors.isEmpty()){
        res.render('contact',{
            path: '/contact',
            flash: req.flash(),
            errors: errors.array(),
            categories: categories.map(category => {
                return {
                    name: category.name,
                    slug: category.slug
                }
            })
        })
    }
    await Message.create({
        name: req.body.name,
        email: req.body.email,
        subject: req.body.subject,
        message: req.body.message,
    })
    req.flash('success', 'Your message has been successfully sent.')
    const categories = await Category.findAll({})
    res.render('contact',{
        errors: [],
        path: '/contact',
        flash: req.flash(),
        categories: categories.map(category => {
            return {
                name: category.name,
                slug: category.slug
            }
        })
    })
}
  
module.exports = {
    get,
    post
}