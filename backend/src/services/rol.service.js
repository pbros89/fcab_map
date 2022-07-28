const DB = require('../config/bdMapaContext');


const cargarTodos = async ()=>{
    try {
        let sql = `
        select 
            id_rol,
            nombre,
            estado
        from rol`;

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

const cargarPorId = async (id)=>{
    try {
        let sql = `
        select 
            id_rol,
            nombre,
            estado
        from rol 
        where id_rol = '${id}'`;

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

module.exports={
    cargarTodos,
    cargarPorId,
}