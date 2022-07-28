const { body } = require("express-validator");

const loginValidator = () =>[
  body("usuario")
    .withMessage("Usuario es requerido"),
  body("password")
    .exists()
    .withMessage("Contraseña es requerida")
    .isString()
    .withMessage("Contraseña debe ser un texto")
    .isLength({ min: 5 })
    .withMessage("Contraseña debe ser al menos 5 carácteres"),
];