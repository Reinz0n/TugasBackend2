const jwt = require("jsonwebtoken");

const accessTokenSecretKey = "itc-secret-key";

function generateAccessToken(userPayload){
    return jwt.sign(userPayload, accessTokenSecretKey, {
        subject: userPayload.email,
        expiresIn: "15m",
    });
}

module.exports = {
    generateAccessToken,
}