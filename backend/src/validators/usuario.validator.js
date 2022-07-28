const { check } = require("express-validator");
const {validateResult} = require('../middlewares/validateResult');

const crearValidator = [
    check("rut")
        .isNumeric()
        .withMessage('Rut incorrecto'),
    check("cuenta")
        .isLength({min:3, max:100})
        .withMessage("Cuenta incorrecta"),
    check("password")
        .isLength({min:5})
        .withMessage("Contraseña no puede ser menor a los 5 caracteres."),
    check("nombre")
        .isLength({min:3, max:500})
        .withMessage("Nombre incorrecto."),
    check("correo")
        .isEmail()
        .withMessage("Correo incorrecto"),
    check("estado")
        .isLength({min:1, max:1})
        .withMessage("Estado incorrecto"),  
    (req, res, mext) => {
        validateResult(req, res, mext);
    }
];


const modificarValidator = [
    check("rut")
        .isInt({min: 1, max: 9999999999})
        .withMessage('Rut incorrecto'),
        check("cuenta")
        .isLength({min:3, max:100})
        .withMessage("Cuenta incorrecta"),
        check("nombre")
        .isLength({min:3, max:500})
        .withMessage("Nombre incorrecto."),
        check("correo")
        .isEmail()
        .withMessage("Correo incorrecto"),
        check("estado")
        .isLength({min:1, max:1})
        .withMessage("Estado incorrecto"),
        (req,res,next) => {
            validateResult(req,res,next);
        }
        
];

module.exports = {
    crearValidator,
    modificarValidator
};