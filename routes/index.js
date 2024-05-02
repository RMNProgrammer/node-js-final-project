const express = require('express')
const router = express.Router()

const shopController = require('../controllers/shopController')
const aboutController = require('../controllers/aboutController')
const contactController = require('../controllers/contactController')
const productController = require('../controllers/productController')
const categoryController = require('../controllers/categoryController')
const homepageController = require('../controllers/homepageController')

router.get('/', homepageController)
router.get('/shop', shopController)
router.get('/about', aboutController)
router.get('/shop/:id', productController)
router.get('/contact', contactController.get)
router.post('/contact', contactController.post)
router.get('/category/:name', categoryController)

module.exports = router