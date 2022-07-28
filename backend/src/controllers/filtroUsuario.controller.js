const filtroUsuarioService = require('../services/filtroUsuario.service');

const cargarPorUsuario = async (req, res) => {

    let data = await filtroUsuarioService.cargarPorUsuario(req.params.id);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron filtros',
            items: []
        });
    }
}



const modificar = async (req, res) => {

    let data = await filtroUsuarioService.modificar(
        req.body.rut,
        req.body.filtro,
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



module.exports={
    cargarPorUsuario,
    modificar,
}