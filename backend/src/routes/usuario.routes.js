
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/usuario.controller');
const  {crearValidator, modificarValidator} = require('../validators/usuario.validator');
const {verifyToken, isAdmin} = require('../middlewares/jwtAuth');


router.get('/',verifyToken, controller.cargarTodos);
router.get('/:rut',verifyToken, controller.cargarPorId);
router.post('/', verifyToken, crearValidator, controller.crear);
router.put('/',[verifyToken, modificarValidator], controller.modificar);

module.exports = router;