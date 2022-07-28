
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/detectores.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarDetectores);

module.exports = router;