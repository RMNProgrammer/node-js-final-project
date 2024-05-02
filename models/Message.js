const { DataTypes } = require('sequelize');
const db = require('../configs/db');

const Message = db.define('messages', 
{
    id: {
        type: DataTypes.NUMBER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true,
    },
    name: {
        type: DataTypes.STRING
    },
    email: {
        type: DataTypes.STRING
    },
    subject: {
        type: DataTypes.STRING
    },
    message: {
        type: DataTypes.STRING
    }
},{
    timestamps: false
})

module.exports = Message