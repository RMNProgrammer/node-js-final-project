const logoutController = (req, res, next) => {
    req.logout((err) => {
        if(err){
            next(err)
        }
        res.redirect('/')
    })
}

module.exports = logoutController