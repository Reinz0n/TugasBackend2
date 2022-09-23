const {userCreateSchema, userUpdateSchema, authLoginSchema, authRegisterSchema} = require("./schema");

function validateUserCreatePayload(payload){
    const validationResult = userCreateSchema.validate(payload);
    if(validationResult.error){
        throw new Error(validationResult.error.message);
    }
}

function validateUserUpdatePayload(payload){
    const validationResult = userUpdateSchema.validate(payload);
    if(validationResult.error){
        throw new Error(validationResult.error.message);
    }
}

function validateAuthLoginPayload(payload){
    const validationResult = authLoginSchema.validate(payload);
    if(validationResult.error){
        throw new Error(validationResult.error.message);
    }
}

function validateAuthRegisterPayload(payload){
    const validationResult = authRegisterSchema.validate(payload);
    if(validationResult.error){
        throw new Error(validationResult.error.message);
    }
}

module.exports = {
    validateUserCreatePayload,
    validateUserUpdatePayload,
    validateAuthLoginPayload,
    validateAuthRegisterPayload,
}