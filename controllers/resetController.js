const { validationResult } = require('express-validator')
const User = require('../models/User')

const get = async (req, res) => {
    let disabled = false
    if ( req.query.token ){
        const existanceUser = await User.findOne({
            where: { 
                token: req.query.token 
            },
        })
        if (!existanceUser) { 
            disabled = true
            req.flash('warning', 'This token is not valid') 
        }
    }
    else { 
        disabled = true
        req.flash('error', 'The password change token was not received, please try again.') 
    }
    res.render('reset', {
        flash: req.flash(),
        token: req.query.token,
        disabled: disabled,
        errors: [],
    })
}

const post = async (req, res) => {
    const errors = validationResult(req)
    if (!errors.isEmpty()) {
        res.render('reset', {
            flash: req.flash(),
            token: req.query.token,
            disabled: false,
            errors: errors.array(),
        })
        return
    }
    const existanceUser = await User.findOne({
        where: {
            token: req.query.token
        },
    })
    if (!existanceUser) {
        req.flash('warning', 'This token is not valid')
        res.render('reset', {
            flash: req.flash(),
            token: req.query.token,
            disabled: true,
            errors: [],
        })
        return
    }
    await User.update({
        password: await User.encryptPassword(req.body.password),
        token: '-',
    },{
        where: {
            token: req.query.token,
        },
    })
    req.flash('success', 'Your password has successfully reset.')
    res.render('reset', {
        flash: req.flash(),
        token: req.query.token,
        disabled: true,
        errors: [],
    })
}

module.exports = {
  get,
  post,
}