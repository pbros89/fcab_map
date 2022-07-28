const rolService = require('../services/rol.service');

const cargarTodos = async (req, res) => {

    let data = await rolService.cargarTodos();
    
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


const cargarPorId = async (req, res) => {

    let data = await rolService.cargarPorId(req.params.id);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontró el rol',
            items: []
        });
    }
}

module.exports={
    cargarTodos,
    cargarPorId,
}