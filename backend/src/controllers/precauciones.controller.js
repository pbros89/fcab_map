const service = require('../services/precauciones.service');

const cargarPrecauciones = async (req, res) => {

    let data = await service.cargarPrecauciones();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron precauciones',
            items: []
        });
    }
}



module.exports={
    cargarPrecauciones,
}