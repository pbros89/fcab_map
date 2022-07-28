const service = require('../services/trenes.service');

const cargarTrenes = async (req, res) => {

    let data = await service.cargarTrenes();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron trenes',
            items: []
        });
    }
}


const cargarComposicionTren = async (req, res) => {

    let data = await service.cargarComposicionTren(
        req.body.tren,
        req.body.programa);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontró composición',
            items: []
        });
    }
}

const cargarOperadoresTren = async (req, res) => {

    let data = await service.cargarOperadoresTren(
        req.body.tren,
        req.body.programa);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron operadores',
            items: []
        });
    }
}

module.exports={
    cargarTrenes,
    cargarComposicionTren,
    cargarOperadoresTren
}