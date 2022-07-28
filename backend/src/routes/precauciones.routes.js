
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/precauciones.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarPrecauciones);

module.exports = router;