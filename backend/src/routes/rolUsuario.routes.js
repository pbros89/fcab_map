
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/rolUsuario.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/:rut',verifyToken, controller.cargarPorUsuario);
router.post('/',verifyToken, controller.crear);
router.delete('/',verifyToken, controller.eliminar);

module.exports = router;