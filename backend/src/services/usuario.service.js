const DB = require('../config/bdMapaContext');
const bcrypt = require('bcryptjs');


const cargarTodos = async ()=>{
    try {
        let sql = `
        select 
            rut,
            cuenta,
            nombre,
            correo,
            fecha_creacion,
            estado
        from usuario`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                rut: e[0],
                cuenta: e[1],
                nombre: e[2],
                correo: e[3],
                fecha_creacion: e[4],
                estado: e[5],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarPorId = async (rut)=>{
    try {
        let sql = `
        select 
            rut,
            cuenta,
            nombre,
            correo,
            fecha_creacion,
            estado
        from usuario 
        where rut = ${rut}`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                rut: e[0],
                cuenta: e[1],
                nombre: e[2],
                correo: e[3],
                fecha_creacion: e[4],
                estado: e[5],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const crear = async (rut, cuenta, password, nombre, correo, estado)=>{
    let sql = ` 
            BEGIN
                INS_USUARIO(:i1,:i2,:i3,:i4,:i5,:i6,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: cuenta,
        i3: password,
        i4: nombre,
        i5: correo,
        i6: estado,
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


const modificar = async (rut, cuenta, nombre, correo, estado)=>{
    let sql = ` 
            BEGIN
                UPD_USUARIO(:i1,:i2,:i3,:i4,:i5,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: cuenta,
        i3: nombre,
        i4: correo,
        i5: estado,
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
    cargarTodos,
    cargarPorId,
    crear,
    modificar,
}