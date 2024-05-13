const nodemailer = require("nodemailer")

const sendMail = async ({ to, subject, text, html }) => {
    const transporter = nodemailer.createTransport({
        host: process.env.MAIL_HOST,
        port: process.env.MAIL_PORT,
        secure: false,
        auth: {
          user: process.env.MAIL_USER,
          pass: process.env.MAIL_PASS,
        },
    })

    await transporter.sendMail({
        from: 'automailer@dev-ramezani.ir',
        to,
        subject,
        text,
        html,
    })
}

module.exports = sendMail