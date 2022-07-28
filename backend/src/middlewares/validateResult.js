const {validationResult} = require('express-validator');

const validateResult = (req,res,next) =>{
    const errors = validationResult(req);
    if(!errors.isEmpty()) {
        return res.status(400).json({
            success: false,
            message: 'Problemas al validar.',
            errors: errors.array()
        })
    }

    next();
}

module.exports = {validateResult};
