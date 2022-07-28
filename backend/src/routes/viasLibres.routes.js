
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/viasLibres.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',
    //verifyToken, 
    controller.cargarViasLibres);

module.exports = router;