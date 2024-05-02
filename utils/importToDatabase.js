const Rate = require('../models/Rate')
const data = require('../public/rates.json')

const importToDatabase = () => {
    data.forEach((rate) => {
        Rate.create({
            ...rate
        })
    })
}

importToDatabase()