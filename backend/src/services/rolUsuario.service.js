const DB = require('../config/bdMapaContext');


const cargarPorUsuario = async (rut)=>{
    try {
        let sql = `
        select 
            ru.id_rol,
            r.nombre,
            ru.estado
        from rol r rol_usuario ru
        where r.id_rol = ru.id_rol
        and ru.rut_usuario = ${rut}`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                id_rol: e[0],
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


const crear = async (rut, rol,)=>{
    let sql = ` 
            BEGIN
                INS_ROL_USUARIO(:i1,:i2,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: rol,
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

const eliminar = async (rut, rol,)=>{
    let sql = ` 
            BEGIN
                DEL_ROL_USUARIO(:i1,:i2,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: rol,
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



module.exports={
    cargarPorUsuario,
    crear,
    eliminar
}