const Category = require('../models/Category')
const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const GroceryProduct = db.define('grocery_products', 
{
    id: {
        type: DataTypes.NUMBER,
        allowNull: false,
        primaryKey: true,
    },
    name: {
        type: DataTypes.STRING
    },
    image: {
        type: DataTypes.STRING
    },
    weight: {
        type: DataTypes.STRING
    }, 
    description: {
        type: DataTypes.STRING
    }, 
    category_id: {
        type: DataTypes.NUMBER,
    },
    star: {
        type: DataTypes.FLOAT
    },
    price: {
        type: DataTypes.STRING
    },
},{
    timestamps: false
})

GroceryProduct.belongsTo(Category,{
    foreignKey: {
      name: 'category_id'
    }
})

module.exports = GroceryProduct