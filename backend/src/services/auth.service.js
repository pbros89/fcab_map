const DB = require('../config/bdMapaContext');
const bcrypt = require('bcryptjs');


const login = async (usuario, password) => {
    let data = await getUsuario(usuario);

    if(data.length>0){
        let usuario = data[0];
        let rut = usuario.rut;
        let passwordHash = usuario.password;//await bcrypt.hash(password,8);

        console.log(passwordHash);

        let compare = bcrypt.compareSync(password,passwordHash);

        if(compare){
            let res = await generarClaveSecreta(rut);
            return res;
        }
    }

    return {est: -1, msg: 'Usuario o contraseña incorrecta'};
}


const isDobleLogin = async (usuario)=>{
    try {
        let sql = `
            SELECT CUENTA
            FROM USUARIO
            WHERE (CUENTA = '${usuario}')
            AND ESTADO = 'A'
            AND ESTADO_VALIDACION = 'OK'`;

        let data = await DB.open(sql,[],false);// true: COMMIT

        return data.rows?.length > 0 ?? false;
    }catch(e) {
        console.log(e)
        return false;
    }
}



const getUsuario = async (usuario)=>{
    try {
        let sql = `
            SELECT 
                RUT,
                CUENTA,
                PASSWORD,
                NOMBRE,
                CORREO,
                to_char(FECHA_CREACION, 'dd-mm-yyyy hh24:mi') FECHA_CREACION,
                TEXTO_VALIDACION,
                FECHA_VALIDACION,
                ESTADO_VALIDACION,
                ESTADO
            FROM USUARIO
            WHERE (CUENTA = '${usuario}' OR TO_CHAR(RUT) = '${usuario}')
            AND ESTADO = 'A'`;

        let data = await DB.open(sql,[],false);// true: COMMIT

        let result = data.rows?.map((e)=>{
            return {
                rut: e[0],
                cuenta: e[1],
                password: e[2],
                nombre: e[3],
                correo: e[4],
                fecha_creacion: e[5],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e)
        return [];
    }
}

const generarClaveSecreta = async (rut) => {
    let sql = ` 
            BEGIN
                GENERAR_CLAVE_SECRETA(:i1,:o1,:o2);
            END;`;
    binds = {
        i1: rut ,
        o1: { type: DB.oracledb.NUMBER, dir: DB.oracledb.BIND_OUT },
        o2: { type: DB.oracledb.VARCHAR2, dir: DB.oracledb.BIND_OUT }
    };

    try{
        let result = await DB.execute(sql,binds,true);
        
        return  { 
            est: result.outBinds.o1,
            msg: result.outBinds.o2,
        }
    }catch(error){
        return  { 
            est: -1,
            msg: 'Problemas con la base de datos',
        }
    }
}


const validarClaveSecreta = async (rut, clave) => {
    let sql = ` 
            BEGIN
                VALIDAR_CLAVE_SECRETA(:i1,:i2,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: clave,
        o1: { type: DB.oracledb.NUMBER, dir: DB.oracledb.BIND_OUT },
        o2: { type: DB.oracledb.VARCHAR2, dir: DB.oracledb.BIND_OUT }
    };

    try{
        let result = await DB.execute(sql,binds,true);
        
        return  { 
            est: result.outBinds.o1,
            msg: result.outBinds.o2,
        }
    }catch(error){
        return  { 
            est: -1,
            msg: 'Problemas con la base de datos',
        }
    }
}

const getRolesUsuario = async (rut)=>{
    try {
        let sql = `
            select r.id_rol, r.nombre
            from rol_usuario ru, rol r
            where ru.id_rol = r.id_rol
            and ru.rut_usuario = ${rut}`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                id_rol: e[1],
                nombre: e[2],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const getFiltrosUsuario = async (rut)=>{
    try {
        let sql = `
            select fu.id_filtro, fm.nombre, fu.estado
            from filtro_mapa fm, filtros_usuario fu
            where fm.id_filtro = fu.id_filtro
            and fu.rut_usuario = ${rut}`;

        let data = await DB.open(sql,[],false);// true: COMMIT
        
        let result = data.rows?.map((e)=>{
            return {
                id_filtro: e[0],
                nombre: e[1],
                estado: e[2],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const getRamalesUsuario = async (rut)=>{
    try {
        sql = `
            select id_ramal, rut_usuario
            from ramales_usuario
            where rut_usuario = ${rut}`;

        let data = await DB.open(sql,[],false);// true: COMMIT
    
        let result = data.rows?.map((e)=>{
            return {
                rut_usuario: e[0],
                id_filtro: e[1],
                nombre: e[2],
                estado: e[3],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}



module.exports={
    login,
    isDobleLogin,
    getUsuario,
    generarClaveSecreta,
    validarClaveSecreta,
    getRolesUsuario,
    getFiltrosUsuario,
    getRamalesUsuario
}