const usuarioServicio = require('../services/usuario.service');
const bcrypt = require('bcryptjs');

const cargarTodos = async (req, res) => {

    let data = await usuarioServicio.cargarTodos();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron usuarios',
            items: []
        });
    }
}


const cargarPorId = async (req, res) => {

    let data = await usuarioServicio.cargarPorId(req.params.rut);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontró el usuario',
            items: []
        });
    }
}


const crear = async (req, res) => {

    let passwordHash = await bcrypt.hash(req.body.password,8);

    let data = await usuarioServicio.crear(
        req.body.rut,
        req.body.cuenta,
        passwordHash,
        req.body.nombre,
        req.body.correo,
        req.body.estado,
    );
    
    if(data.msg == 'OK') {

        return res.status(200).json({
            success: true,
            message: 'OK',
        });
    }else{
        return res.status(200).json({
            success: false,
            message: data.msg,
        });
    }
}


const modificar = async (req, res) => {

    let data = await usuarioServicio.modificar(
        req.body.rut,
        req.body.cuenta,
        req.body.nombre,
        req.body.correo,
        req.body.estado,
    );
    
    if(data.msg == 'OK') {

        return res.status(200).json({
            success: true,
            message: 'OK',
        });
    }else{
        return res.status(200).json({
            success: false,
            message: data.msg,
        });
    }
}


module.exports = {
    cargarTodos,
    cargarPorId,
    crear,
    modificar
}