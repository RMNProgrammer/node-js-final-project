const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const Rate = db.define('carts', 
  {
    id: {
      type: DataTypes.NUMBER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    user_id: {
      type: DataTypes.NUMBER
    },
    category_id: {
      type: DataTypes.NUMBER
    }, 
    product_id: {
      type: DataTypes.NUMBER
    }, 
    image: {
      type: DataTypes.STRING
    },
    name: {
      type: DataTypes.STRING
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
    quantity: {
      type: DataTypes.NUMBER
    },
    status: {
      type: DataTypes.STRING
    },
  },{
    timestamps: false
})

module.exports = Rate