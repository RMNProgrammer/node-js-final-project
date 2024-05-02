const { DataTypes } = require('sequelize');
const db = require('../configs/db');

const Category = db.define('categories', 
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
    slug: {
        type: DataTypes.STRING
    },
    description: {
        type: DataTypes.STRING
    },
    count: {
        type: DataTypes.NUMBER
    },
},{
    timestamps: false
})

module.exports = Category