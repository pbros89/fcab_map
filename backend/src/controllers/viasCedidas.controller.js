const service = require('../services/viasCedidas.service');

const cargarViasCedidas = async (req, res) => {

    let data = await service.cargarViasCedidas();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron vías cedidas',
            items: []
        });
    }
}


module.exports={
    cargarViasCedidas,
}