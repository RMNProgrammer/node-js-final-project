const errorHandler = require('./helpers/errorHandler')
require('dotenv').config({ path: './variables.env' })
const cookieParser = require('cookie-parser')
const session = require('express-session')
const flash = require('connect-flash')
const passport = require('passport')
const express = require('express')
const router = require('./routes')
const morgan = require('morgan')
require('./helpers/passport')

const app = express()
const PORT = process.env.PORT || 4000

app.set('view engine', 'ejs')
app.use(morgan('dev'))
app.use(express.static('public'))
app.use(express.json())
app.use(express.urlencoded())

app.use(cookieParser())
app.use(session({
  secret: process.env.SESSION_SECRET_KEY,
}))
app.use(passport.initialize())
app.use(passport.session())
app.use(flash())

app.use('/', router)

app.use(errorHandler.handler404)
app.use(errorHandler.handlerServerErrors)

app.listen(PORT, () => {
  console.log(`App is running on ${PORT}`)
})