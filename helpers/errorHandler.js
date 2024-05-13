const handler404 = (req, res) => {
    res.status(404).render('error/not-found',{user: req.user})
}
  
const handlerServerErrors = (err, req, res, next) => {
    console.error(err.stack)
    res.status(500).render('error/server',{user: req.user})
}

module.exports = {
    handler404,
    handlerServerErrors
}