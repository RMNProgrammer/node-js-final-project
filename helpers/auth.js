const isLoggedIn = (req, res, next) => {
    if (!req.user) {
        req.flash('warning','You need to login first.')
        res.redirect('/login')
    }
    next()
}

const isNotLoggedIn = (req, res, next) => {
    if (req.user) {
        res.redirect('/')
    }
    next()
}

module.exports = {
    isLoggedIn,
    isNotLoggedIn
}