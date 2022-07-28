
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/trenes.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarTrenes);

router.get('/cargarComposicionTren/',
    //verifyToken, 
    controller.cargarComposicionTren);

router.get('/cargarOperadoresTren/',
    //verifyToken, 
    controller.cargarOperadoresTren);

module.exports = router;