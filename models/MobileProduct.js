const Category = require('../models/Category')
const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const MobileProduct = db.define('mobile_products', 
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
    length: {
        type: DataTypes.FLOAT
    },
    width: {
        type: DataTypes.FLOAT
    },
    height: {
        type: DataTypes.FLOAT
    },
    weight: {
        type: DataTypes.FLOAT
    }, 
    internal_memory: {
        type: DataTypes.STRING
    },
    RAM_amount: {
        type: DataTypes.STRING
    },
    CPU_frequency: {
        type: DataTypes.STRING
    },
    camera_resolution: {
        type: DataTypes.STRING
    },
    SIM_size: {
        type: DataTypes.STRING
    },
    network_details: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    OS_version: {
        type: DataTypes.STRING
    },
    features: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    description: {
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

MobileProduct.belongsTo(Category,{
    foreignKey: {
      name: 'category_id'
    }
})

module.exports = MobileProduct