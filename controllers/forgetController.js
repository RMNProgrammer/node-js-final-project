const { validationResult } = require('express-validator')
const sendMail = require('../utils/sendMail')
const User = require('../models/User')
const path = require('path')
const ejs = require('ejs')
const md5 = require('md5')

const get = (req, res) => {
    res.render('forget', {
        flash: req.flash(),
        disabled: false,
        errors: []
    })
}

const post = async (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()){
        res.render('forget', {
            disabled: false,
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
    if (!existanceUser) {
        req.flash('warning', 'This user does not exists.')
        res.render('forget', {
            flash: req.flash(),
            disabled: false,
            errors: [],
        })
        return
    }
    const token = md5(req.body.email + new Date())
    await User.update({
        token: token
    },{
        where: {
            email: req.body.email
        }
    })
    const html = await ejs.renderFile(path.join(__dirname,'../views/mail/auth.ejs'),{
        title: 'Forget Password Instruction',
        description: 'A forgotten password request has been registered on your behalf. Click on the button to change the password:',
        link: `${process.env.URL}:${process.env.PORT}/reset?token=${token}`
    })
    await sendMail({ 
        to: req.body.email,
        subject: 'Forget Password Instruction',
        html: html
    })
    req.flash('success','New instruction has been sent to your mailbox, please check it.')
    res.render('forget', {
        flash: req.flash(),
        disabled: true,
        errors: [],
    })
}
  
module.exports = {
    get,
    post
}