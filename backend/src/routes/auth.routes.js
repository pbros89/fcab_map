
const {Router} = require('express');
const router = Router();
const authController = require('../controllers/auth.controller');

router.post('/login',authController.login);
router.post('/validarClaveSecreta',authController.validarClaveSecreta);
router.post('/refreshToken',authController.refresh);

module.exports = router;