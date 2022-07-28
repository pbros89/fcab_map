
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/estaciones.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarEstaciones);
router.get('/cargarContadorCarro/',
    //verifyToken, 
    controller.cargarContadorCarro);
router.get('/cargarContadorLoco/',
    //verifyToken, 
    controller.cargarContadorLoco);
router.get('/cargarDetalleCarro/',
    //verifyToken, 
    controller.cargarDetalleCarro);
router.get('/cargarDetalleLoco/',
    //verifyToken, 
    controller.cargarDetalleLoco);
router.get('/cargarEstacionesInactivas/',
    //verifyToken, 
    controller.cargarEstacionesInactivas);
router.get('/cargarEstacionesPizarra/',
    //verifyToken, 
    controller.cargarEstacionesPizarra);
router.get('/cargarTerminalAcido/',
    //verifyToken, 
    controller.cargarTerminalAcido);

module.exports = router;