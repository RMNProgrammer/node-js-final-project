const { validationResult } = require('express-validator')
const sendMail = require('../utils/sendMail')
const User = require('../models/User')
const path = require('path')
const ejs = require('ejs')

const get = (req, res) => {
    res.render('signup', {
        flash: req.flash(),
        errors: []
    })
}

const post = async (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()){
        res.render('signup', {
            flash: req.flash(),
            errors: errors.array()
        })
        return
    }
    const existanceUser = await User.findOne({
        where: {
            email: req.body.email,
        }
    })
    if (existanceUser) {
        req.flash('warning', 'This user already exist.')
        res.render('signup', {
            flash: req.flash(),
            errors: [],
        })
        return
    }
    await User.create({
        token: '-',
        address: '-',
        name: req.body.name,
        email: req.body.email,
        password: await User.encryptPassword(req.body.password),
    })
    const html = await ejs.renderFile(path.join(__dirname,'../views/mail/auth.ejs'),{
        title: 'Congratulation!!',
        description: 'Your account has been successfully created on the Online Shop website.',
        link: ''
    })
    await sendMail({ 
        to: req.body.email,
        subject: 'Congratulation!!',
        html: html
    })
    res.redirect('/login')
}
  
module.exports = {
    get,
    post
}