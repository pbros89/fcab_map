const service = require('../services/viasLibres.service');

const cargarViasLibres = async (req, res) => {

    let data = await service.cargarViasLibres();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron vías libres',
            items: []
        });
    }
}


module.exports={
    cargarViasLibres,
}