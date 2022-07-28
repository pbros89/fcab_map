const authService = require('../services/auth.service');
const jwt = require('jsonwebtoken');


const login = async (req, res) => {
    let loginEvent = await authService.login(req.body.usuario, req.body.password);


    if(loginEvent['msg'] == 'OK') {

        let user = await authService.getUsuario(req.body.usuario);

        return res.status(200).send({
            success: true,
            message: loginEvent['msg'],
            items: [user[0],]
        });
    }else{
        return res.status(200).send({
            success: false,
            message: loginEvent['msg'],
            items: []
        });
    }
}

const validarClaveSecreta = async (req, res) => {

    let event = await authService.validarClaveSecreta(req.body.rut, req.body.clave);
    
    if(event['msg'] == 'OK') {

        let user = await authService.getUsuario(req.body.usuario);
        let filtros = await authService.getFiltrosUsuario(user[0].rut);
        let roles = await authService.getRolesUsuario(user[0].rut);
        let ramales = await authService.getRamalesUsuario(user[0].rut);
        user[0].filtros = filtros;
        user[0].roles = roles;
        user[0].ramales = ramales;


        const accessToken = jwt.sign(user[0], process.env.SECRET,{
            expiresIn: '1h'
        })

        const refreshToken = jwt.sign(user[0], process.env.SECRET_REFRESH,{
            expiresIn: '7d'
        })

        return res.status(200).send({
            success: true,
            message: event['msg'],
            items: [{
                usuario: user[0],
                accessToken: accessToken,
                refreshToken: refreshToken
            }]
        });
    }else{
        return res.status(200).send({
            success: false,
            message: event['msg'],
            items: []
        });
    }
}


const refresh = async (req, res) => {
    try {
        let user = await authService.getUsuario(req.body.usuario);
        if(user.length > 0) {
            let filtros = await authService.getFiltrosUsuario(user[0].rut);
            let roles = await authService.getRolesUsuario(user[0].rut);
            let ramales = await authService.getRamalesUsuario(user[0].rut);
            user[0].filtros = filtros;
            user[0].roles = roles;
            user[0].ramales = ramales;


            const accessToken = jwt.sign(user[0], process.env.SECRET,{
                expiresIn: '1h'
            });

            const refreshToken = jwt.sign(user[0], process.env.SECRET_REFRESH,{
                expiresIn: '1d'
            });

            return res.status(200).send({
                success: true,
                message: 'OK',
                items: [{
                    usuario: user[0],
                    accessToken: accessToken,
                    refreshToken: refreshToken
                }]
                
            });
        }

        return res.status(200).send({
            success: false,
            message: 'No se encontro usuario',
            items: []
            
        });
    } catch(e) {
        return res.status(200).send({
            success: false,
            message: 'Problemas al conectarse con la base de datos',
            items: []
            
        });

    }
    
}


module.exports = {
    login,
    validarClaveSecreta,
    refresh
}