const Cart = require('../models/Cart')

const removeFromCartController = async (req, res) => {
    if( req.user && req.query && req.query.categoryId && req.query.productId && ( req.query.categoryId == 4 || req.query.categoryId == 1 && req.query.productId >= 16 || req.query.color ) ){
        const cart = await Cart.findOne({
            where: {
                user_id: req.user.id,
                product_id: req.query.productId,
                category_id: req.query.categoryId,
                color: req.query.color || '-'
            }
        })
        if( cart.quantity == 1 ){
            const id = ( Number(req.query.categoryId) * 100 ) + Number(req.query.productId)
            await Cart.destroy({
                where: {
                    category_id: req.query.categoryId,
                    product_id: req.query.productId,
                    color: req.query.color || '-',
                    user_id: req.user.id,
                    status: 'in basket' 
                }
            })
            res.redirect(`/shop/product-0${id}`)
        }
        else {
            await Cart.update({
                quantity: cart.quantity - 1
              },{
                where: {
                  user_id: req.user.id,
                  product_id: req.query.productId,
                  category_id: req.query.categoryId,
                  color: req.query.color || '-'
                },
            })
            res.redirect('/cart')
        }
        return
    }
    res.render('error/not-found',{ user: req.user })
}
  
module.exports = removeFromCartController