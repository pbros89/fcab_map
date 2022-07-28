const {Router} = require('express');
const router = Router();
const controller = require('../controllers/filtroUsuario.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/:rut',verifyToken, controller.cargarPorUsuario);
router.put('/',verifyToken, controller.modificar);

module.exports = router;