const DB = require('../config/bdMapaContext');


const cargarPorUsuario = async (rut)=>{
    try {
        let sql = `
        select 
            fm.id_filtro,
            fm.nombre,
            fu.estado
        from filtro_mapa fm, filtro_usuario fu
        where fm.id_filtro = fu.id_filtro
        and fu.rut_usuario = ${rut}`;

        let data = await DB.open(sql,[],false);

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


const modificar = async (rut, rol, estado)=>{
    let sql = ` 
            BEGIN
                UPD_FILTRO_USUARIO(:i1,:i2,:i3,:o1,:o2);
            END;`;
    binds = {
        i1: rut,
        i2: rol,
        i3: estado,
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
    modificar,
}