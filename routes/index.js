const express = require('express')
const router = express.Router()

const { body } = require('express-validator')
const cartController = require('../controllers/cartController')
const shopController = require('../controllers/shopController')
const { isLoggedIn, isNotLoggedIn } = require('../helpers/auth')
const aboutController = require('../controllers/aboutController')
const resetController = require('../controllers/resetController')
const loginController = require('../controllers/loginController')
const forgetController = require('../controllers/forgetController')
const logoutController = require('../controllers/logoutController')
const signupController = require('../controllers/signupController')
const contactController = require('../controllers/contactController')
const productController = require('../controllers/productController')
const categoryController = require('../controllers/categoryController')
const homepageController = require('../controllers/homepageController')
const addToCartController = require('../controllers/addToCartController')
const removeFromCartController = require('../controllers/removeFromCartController')

router.get('/', homepageController)
router.get('/shop', shopController)
router.get('/about', aboutController)
router.get('/shop/:id', productController)

router.post('/reset', 
    isNotLoggedIn, 
    body('password').isLength({ min: 8 }),
    resetController.post
)

router.get('/cart', isLoggedIn, cartController.get)
router.get('/logout', isLoggedIn, logoutController)
router.post('/cart', isLoggedIn, cartController.post)
router.get('/reset', isNotLoggedIn, resetController.get)

router.get('/cart/add', isLoggedIn, addToCartController)
router.get('/contact', contactController.get)
router.post('/contact', contactController.post)
router.get('/category/:name', categoryController)

router.get('/cart/remove', isLoggedIn, removeFromCartController)
router.get('/forget', isNotLoggedIn, forgetController.get)
router.post('/login', isNotLoggedIn, loginController.post)

router.get('/login', 
    isNotLoggedIn,    
    body('email').isEmail().normalizeEmail().toLowerCase(),
    body('password').not().isEmpty().isLength({ min: 8 }),
    loginController.get
)

router.get('/sign-up', isNotLoggedIn, signupController.get)
router.post('/forget', isNotLoggedIn, forgetController.post)
router.post('/sign-up', 
    isNotLoggedIn,
    body('name').not().isEmpty().normalizeEmail().toLowerCase(),
    body('email').isEmail().normalizeEmail().toLowerCase(),
    body('password').not().isEmpty().isLength({ min: 8 }),
    signupController.post
)

module.exports = router