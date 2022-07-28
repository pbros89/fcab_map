const rolUsuarioService = require('../services/rolUsuario.service');

const cargarPorUsuario = async (req, res) => {

    let data = await rolUsuarioService.cargarPorUsuario(req.params.id);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron roles',
            items: []
        });
    }
}

const crear = async (req, res) => {

    let data = await rolUsuarioService.crear(
        req.body.rut,
        req.body.rol,
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


const eliminar = async (req, res) => {

    let data = await rolUsuarioService.eliminar(
        req.body.rut,
        req.body.rol,
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




module.exports={
    cargarPorUsuario,
    crear,
    eliminar,
}