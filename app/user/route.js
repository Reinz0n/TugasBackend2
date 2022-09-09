const express = require('express');
const { handlerGetUser, handlerPostUser, handlerPutUser, handlerDeleteUser, handlerGetUserById, handlerGetUserByName } = require('./handler');
const router = express.Router();

// api 1
// method get users
// mendapatkan seluruh users yang terdaftar
router.get('/', handlerGetUser);

// api 2
// method get user by id
// mendapatkan user berdasarkan id
router.get('/:id', handlerGetUserById)

// api 3
// create user
// menambahkan user baru
router.post('/', handlerPostUser);

// api 4
// update user
// mengupdate user yang sudah terdaftar
router.put('/:id', handlerPutUser);

// api 5
// delete user
// menghapus user yang sudah terdaftar
router.delete('/:id', handlerDeleteUser);

// api 6
// method get user by name
// mendapatkan user berdasarkan nama
router.get('/search?name=', handlerGetUserByName);

module.exports = router;