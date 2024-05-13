const { DataTypes } = require('sequelize')
const db = require('../configs/db')
const bcrypt = require('bcrypt')

const User = db.define('users', 
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
    password: {
      type: DataTypes.STRING
    },
    address: {
      type: DataTypes.STRING
    },
    token: {
      type: DataTypes.STRING,
      defaultValue: '-'
    },
  },{
    timestamps: false
})

User.validPassword = (user, pwd) => {
  return bcrypt.compareSync(pwd, user.password)
}

User.encryptPassword = async (password) => {
  const saltRounds = Number(process.env.SALT_ROUNDS) || 10
  const salt = await bcrypt.genSaltSync(saltRounds)
  const hash = await bcrypt.hashSync(password, salt)
  return hash
}

module.exports = User