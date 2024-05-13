const { DataTypes } = require('sequelize')
const db = require('../configs/db')

const Rate = db.define('rates', 
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
    star: {
      type: DataTypes.NUMBER
    },    
    profile: {
      type: DataTypes.STRING
    },
    date: {
      type: DataTypes.DATE
    },
    description: {
      type: DataTypes.STRING
    },
  },{
    timestamps: false
})

module.exports = Rate