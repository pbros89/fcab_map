const service = require('../services/estaciones.service');

const cargarEstaciones = async (req, res) => {

    let data = await service.cargarEstaciones();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron estaciones',
            items: []
        });
    }
}

const cargarEstacionesPizarra = async (req, res) => {

    let data = await service.cargarEstacionesPizarra();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron estaciones pizarra',
            items: []
        });
    }
}

const cargarContadorLoco = async (req, res) => {

    let data = await service.cargarContadorLoco(req.body.estacion);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron contador locomotora',
            items: []
        });
    }
}

const cargarEstacionesInactivas = async (req, res) => {

    let data = await service.cargarEstacionesInactivas();
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron estaciones inactivas',
            items: []
        });
    }
}


const cargarDetalleLoco = async (req, res) => {
    
    let data = await service.cargarDetalleLoco(req.body.estacion, req.body.linea);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron detalle locomotora',
            items: []
        });
    }
}

const cargarContadorCarro = async (req, res) => {

    let data = await service.cargarContadorCarro(req.body.estacion,);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron contador carro',
            items: []
        });
    }
}

const cargarDetalleCarro = async (req, res) => {

    let data = await service.cargarDetalleCarro(req.body.estacion, req.body.linea, req.body.servicio,);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron detalle carro',
            items: []
        });
    }
}

const cargarTerminalAcido = async (req, res) => {

    let data = await service.cargarTerminalAcido(req.body.terminal,);
    
    if(data.length > 0) {

        return res.status(200).json({
            success: true,
            message: 'OK',
            items: data
        });
    }else{
        return res.status(200).json({
            success: false,
            message: 'No se encontraron terminales acido',
            items: []
        });
    }
}

module.exports={
    cargarEstaciones,
    cargarEstacionesInactivas,
    cargarEstacionesPizarra,
    cargarContadorLoco,
    cargarDetalleLoco,
    cargarContadorCarro,
    cargarDetalleCarro,
    cargarTerminalAcido
}