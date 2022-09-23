const Joi = require("joi");

const userCreateSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().min(8).required(),
    fullname: Joi.string().required(),
    shortname: Joi.string().required(),
    biodata: Joi.string().required(),
    angkatan: Joi.string().required(),
    jabatan: Joi.string().required(),
}).unknown();

const userUpdateSchema = Joi.object({
    id: Joi.number().integer().required(),
    fullname: Joi.string().min(3).required(),
    shortname: Joi.string().min(3).required(),
    biodata: Joi.string().required(),
    angkatan: Joi.string().required(),
    jabatan: Joi.string().required(),
}).unknown();

const authLoginSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().min(8).required(),
})

const authRegisterSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().min(8).required(),
    fullname: Joi.string().required(),
    shortname: Joi.string().required(),
    biodata: Joi.string().required(),
    angkatan: Joi.string().required(),
    jabatan: Joi.string().required(),
})

module.exports = {
    userCreateSchema,
    userUpdateSchema,
    authLoginSchema,
    authRegisterSchema,
}