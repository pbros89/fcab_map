const DB = require('../config/bdSgpctContext');

const cargarPrecauciones = async ()=>{
    try {
        let sql = `
        SELECT 
            TIPO, 
            COD_RAMAL,
            KM_DESDE,
            KM_HASTA,
            NUMERO,
            VELOCIDAD,
            CAUSA,
            OBSERVACION,
            ACTIVA,
            FACTIVA,
            SENTIDO
        FROM VO_ALL_PRECAUCIONES_VW
        WHERE ESTADO = 'A'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                tipo: e[0],
                cod_ramal: e[1],
                km_desde: e[2],
                km_hasta: e[3],
                numero: e[4],
                velocidad: e[5],
                causa: e[6],
                observacion: e[7],
                activa: e[8],
                factiva: e[9],
                sentido: e[10],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

module.exports={
    cargarPrecauciones,
}