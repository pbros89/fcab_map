
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/viasCedidas.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarViasCedidas);

module.exports = router;