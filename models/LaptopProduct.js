const Category = require('../models/Category')
const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const LaptopProduct = db.define('laptop_products', 
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
    CPU_model: {
        type: DataTypes.STRING
    },
    CPU_description: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    cache_memory: {
        type: DataTypes.STRING
    },
    RAM_memory: {
        type: DataTypes.NUMBER
    },
    internal_memory: {
        type: DataTypes.STRING
    },
    internal_memory_type: {
        type: DataTypes.STRING
    },
    communication_ports: {
        type: DataTypes.STRING
    },
    batery_charging: {
        type: DataTypes.STRING
    },
    operating_system: {
        type: DataTypes.STRING
    },
    display_size: {
        type: DataTypes.FLOAT
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

LaptopProduct.belongsTo(Category,{
    foreignKey: {
      name: 'category_id'
    }
})

module.exports = LaptopProduct