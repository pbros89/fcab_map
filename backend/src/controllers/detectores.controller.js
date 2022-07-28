const service = require('../services/detectores.service');

const cargarDetectores = async (req, res) => {

    let data = await service.cargarDetectores();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron detectores',
            items: []
        });
    }
}



module.exports={
    cargarDetectores,
}