const filtroMapaService = require('../services/filtroMapa.service');

const cargarTodos = async (req, res) => {

    let data = await filtroMapaService.cargarTodos();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron filtro',
            items: []
        });
    }
}


const cargarPorId = async (req, res) => {

    let data = await filtroMapaService.cargarPorId(req.params.id);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontró el filtro',
            items: []
        });
    }
}

module.exports={
    cargarTodos,
    cargarPorId,
}