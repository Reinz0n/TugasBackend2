const { User } = require("../../models");
const bcrypt = require("bcrypt");
const { validateUserCreatePayload, validateUserUpdatePayload } = require("../../validator/user");

module.exports = {
    handlerGetUser : async (req, res) =>{
        const users = await User.findAll();
        res.status(200).json(users);
    },
    handlerGetUserById : async (req, res) =>{
        const {id} = req.params;
        const user = await User.findByPk(id);
        if(!user){
            res.status(404).json({
                message: "User not found",
            });
        } else{
            res.status(200).json(user);
        }
    },
    handlerPostUser : async (req, res) =>{
        try{
            const { email, password, fullname, shortname, biodata, angkatan, jabatan } = req.body;
        
            validateUserCreatePayload(req.body);
            const hashPassword = await bcrypt.hash(password, 10);
            const user = await User.create({
                email,
                password : hashPassword,
                fullname,
                shortname,
                biodata,
                angkatan,
                jabatan,
            });
            res.status(200).json(user);
        } catch(error){
            res.status(400).json(error.message);
        }
    },
    handlerPutUser : async (req, res) =>{
        try{
            const {id} = req.params;
            const {fullname, shortname, biodata, angkatan, jabatan,} = req.body;
            
            validateUserUpdatePayload({id, fullname, shortname, biodata, angkatan, jabatan});
            const user = await User.findByPk(id);
            if(!user){
                res.status(404).json({
                    message: "User not found",
                });
            } else{
                await user.update({
                    fullname,
                    shortname,
                    biodata,
                    angkatan,
                    jabatan,
                });
                res.status(200).json(user);
            }
        } catch(error){
            res.status(400).json(error.message);
        }
    },
    handlerDeleteUser : async (req, res) =>{
        const {id} = req.params;
        const user = await User.findByPk(id);
        if(!user){
            res.status(404).json({
                message: "User not found",
            });
        } else{
            await user.destroy();
            res.status(200).json({
                message: "User deleted",
            });
        }
    },
    handlerGetUserByName : async (req, res) =>{
        const { fullname } = req.params
        const user = await User.findByPk(fullname);
        if(!user){
            res.status(404).json({
                message: "User not found",
            });
        } else{
            res.status(200).json(user);
        }
    },
};