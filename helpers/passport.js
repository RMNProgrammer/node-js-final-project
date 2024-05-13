const localStrategy = require('passport-local').Strategy
const User = require('../models/User')
const passport = require('passport')

passport.initialize()
passport.use(
  new localStrategy({
    usernameField: 'email',
    passwordField: 'password'
  }, async (email, pwd, done) => {
    const user = await User.findOne({ 
      where: {
        email: email
      } 
    })
    try{
      if (!user){
        return done(null, false, { message: 'Incorrect email.'})
      }
      if (!User.validPassword(user, pwd)) {
        return done(null, false, { message: 'Incorrect password.'})
      }
      return done(null, user)
    } catch(err) {
      done(err)
    }
  })
)

passport.serializeUser((user, done) => {
  done(null, user.id)
})

passport.deserializeUser(async (id, done) => {
  try{
    const user = await User.findOne({
      where: {
        id
      }
    })
    done(null, user)
  } catch(err) {
    done(err, null)
  }
})