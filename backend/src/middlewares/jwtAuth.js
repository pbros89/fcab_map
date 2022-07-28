const jwt = require('jsonwebtoken');
const authService = require('../services/auth.service')

const verifyToken = (req,res,next)=>{
    let token = req.headers['x-access-token'] || req.headers['authorization'] || req.body.token;
    if(!token){
        res.status(401).json({
            success: false,
            message: 'No tiene permisos para ejecutar (token requerido)', //sin token
        })
        return;
    }
    if(token.startsWith('Bearer ')){
        token = token.slice(7,token.length);
    }
    if(token){
        jwt.verify(token,process.env.SECRET,(error,decoded)=>{
            if(error){
                return res.status(401).json({
                    success: false,
                    message: 'No tiene permisos para ejecutar (token invalido)', //token invalido
                });
            }else{
                req.decoded = decoded;
                next();
            }
        })
    }
}

const verifyTokenRefresh = (req,res,next)=>{
    let token = req.headers['x-access-token'] || req.headers['authorization'] || req.body.refreshToken;
    if(!token){
        res.status(401).json({
            success: false,
            message: 'No tiene permisos para ejecutar (token requerido)', //sin token
        })
        return;
    }
    if(token.startsWith('Bearer ')){
        token = token.slice(7,token.length);
    }
    if(token){
        jwt.verify(token,process.env.SECRET_REFRESH,(error,decoded)=>{
            if(error){
                return res.status(401).json({
                    success: false,
                    message: 'No tiene permisos para ejecutar (token invalido)', //token invalido
                });
            }else{
                req.decoded = decoded;
                next();
            }
        })
    }
}

const isDobleLogin = async (req,res,next)=>{
    const user = req.decoded;
    const valida = await authService.isDobleLogin(user.cuenta);
    if(valida) {
        next();
    }else{
        res.status(401).json({
            success: false,
            message: 'Debe iniciar sesión para poder continuar.', //token invalido
        });
    }
}

const isAdmin = (req,res,next)=>{
    const user = req.decoded;
    const data = user.roles.find(e => e.id_rol == 'ADMIN');
    if(data.isEmpty()){
        res.status(403).json({
            success: false,
            message: 'No tiene permisos suficientes.', 
        });
    }
    next();
}

const isOperador = (req,res,next)=>{
    const user = req.decoded;
    const data = user.roles.find(e => e.id_rol == 'OPERADOR');
    if(data.isEmpty()){
        res.status(403).json({
            success: false,
            message: 'No tiene permisos suficientes.',
        });
    }
    next();
}

module.exports = {
    verifyToken,
    verifyTokenRefresh,
    isDobleLogin,
    isAdmin,
    isOperador
}