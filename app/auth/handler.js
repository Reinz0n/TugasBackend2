const { User } = require("../../models");
const bcrypt = require("bcrypt");
const { validateAuthLoginPayload, validateAuthRegisterPayload } = require("../../validator/user");
const { generateAccessToken } = require("../../utils/TokenManager");

module.exports = {
    handlerLoginUser: async (req, res) => {
        try{
            const{email, password} = req.body;
            
            validateAuthLoginPayload({email, password});
            const user = await User.findOne({
                where: {
                    email,
                },
            });
    
            if(!user){
                throw new Error("User not found");
            }
    
            const passwordValid = bcrypt.compareSync(password, user.password);
            if(!passwordValid){
                throw new Error("Invalid password");
            }
    
            const accessToken = generateAccessToken({
                id: user.id,
                email: user.email,
            });

            res.status(200).json({
                data : {
                    user,
                    accessToken,
                },
            });
        }catch(error){
            res.status(400).json(error.message);
        }
    },
    handlerRegisterUser: async (req, res) =>{
        try{
            const { email, password, fullname, shortname, biodata, angkatan, jabatan } = req.body;
            
            validateAuthRegisterPayload(req.body);
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
};
