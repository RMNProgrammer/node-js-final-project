const handler404 = (req, res) => {
    res.status(404).render('error/not-found')
}
  
const handlerServerErrors = (err, req, res, next) => {
    console.error(err.stack)
    res.status(500).render('error/server')
}

module.exports = {
    handler404,
    handlerServerErrors
}