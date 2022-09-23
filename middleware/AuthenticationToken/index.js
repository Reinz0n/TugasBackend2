const jwt = require("jsonwebtoken");

const accessTokenSecretKey = "itc-secret-key";

function AuthenticationToken(req, res, next){
    const authHeader = req.headers["authorization"];
    const token = authHeader && authHeader.split(" ")[1];
    if(!token){
        next(new Error("Token is required"));
    }

    const decoded = jwt.verify(token, accessTokenSecretKey);
    next();
}

module.exports = AuthenticationToken;