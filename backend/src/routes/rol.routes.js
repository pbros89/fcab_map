
const {Router} = require('express');
const router = Router();
const controller = require('../controllers/rol.controller');
const {verifyToken} = require('../middlewares/jwtAuth');

router.get('/',verifyToken, controller.cargarTodos);
router.get('/:id',verifyToken, controller.cargarPorId);

module.exports = router;