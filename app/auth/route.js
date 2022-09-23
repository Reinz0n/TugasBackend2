const express = require('express');
const { handlerLoginUser, handlerRegisterUser } = require('./handler');
const router = express.Router();

// api 1
// login user
// login user yang sudah terdaftar
router.post("/login", handlerLoginUser);

// api 2
// register user
// mendaftar user
router.post("/register", handlerRegisterUser);

module.exports = router;