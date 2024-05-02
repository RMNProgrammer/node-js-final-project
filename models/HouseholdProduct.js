const Category = require('../models/Category')
const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const HouseholdProduct = db.define('household_appliances_products', 
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
    height: {
        type: DataTypes.FLOAT
    },
    wide: {
        type: DataTypes.FLOAT
    },
    depth: {
        type: DataTypes.FLOAT
    },
    weight: {
        type: DataTypes.NUMBER,
        allowNull: true,
    }, 
    capacity: {
        type: DataTypes.NUMBER,
        allowNull: true,
    },
    possibilities: {
        type: DataTypes.STRING
    },
    category_id: {
        type: DataTypes.NUMBER,
    },
    color: {
        type: DataTypes.STRING
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

HouseholdProduct.belongsTo(Category,{
    foreignKey: {
      name: 'category_id'
    }
})

module.exports = HouseholdProduct