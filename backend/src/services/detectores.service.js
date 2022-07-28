const DB = require('../config/bdSgpctContext');

const cargarDetectores = async ()=>{
    try {
        let sql = `
        SELECT 
            DDD.ID_DETECTOR,
            DDD.KM,
            DDD.RAMAL,
            DDD.DESCRIPCION,
            DDD.CANAL,
            DDD.HABILITADO,
            DDD.ZONA_DED,
            DRD.ID_RADIO
        FROM DR_DETECTOR_DESRIELO DDD, DR_RADIO_DETECTOR DRD
        WHERE DDD.ID_DETECTOR = DRD.ID_DETECTOR`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                id_detector: e[0],
                km: e[1],
                ramal: e[2],
                descripcion: e[3],
                canal: e[4],
                habilitado: e[5],
                zona_ded: e[6],
                id_radio: e[7],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


module.exports={
    cargarDetectores,
}