const DB = require('../config/bdMapaContext');


const cargarTodos = async ()=>{
    try {
        let sql = `
        select 
            id_filtro,
            nombre,
            estado
        from filtro_mapa`;

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

const cargarPorId = async (id)=>{
    try {
        let sql = `
        select 
            id_filtro,
            nombre,
            estado
        from filtro_mapa 
        where id_filtro = ${id}`;

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

module.exports={
    cargarTodos,
    cargarPorId,
}