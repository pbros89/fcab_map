
const DB = require('../config/bdSgpctContext');

const cargarViasCedidas = async ()=>{
    try {
        let sql = `
        select 
            PK_COD_VIA_CEDIDA COD_VIA_CEDIDA,
            FK_RAMAL_ORIGEN RAMAL_ORIGEN,
            TO_CHAR(FECHA_INICIAL_VIA_CEDIDA, 'DD-MM-YYYY HH24:MI') FEC_INI,
            KM_INICIAL_VIA_CEDIDA  KM_INI,
            KM_FINAL_VIA_CEDIDA KM_FIN,
            TO_CHAR(FECHA_FINAL_VIA_CEDIDA, 'DD-MM-YYYY HH24:MI') FEC_FIN,
            DESCRIPCION,
            USR_RESPONSABLE,
            USR_CREADOR,
            ESTADO_VC,
            TO_CHAR(FECHA_ESTIMADA_TERMINO, 'DD-MM-YYYY HH24:MI') FEC_FIN_ESTIMADA,
            CRUCETA,
            NUMERO_VIA_CEDIDA
        from pct_via_cedida
        where ESTADO_VC <> 'TERMINADA'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                cod_via_cedida: e[0],
                ramal_origen: e[1],
                fec_ini: e[2],
                km_ini: e[3],
                km_fin: e[4],
                fec_fin: e[5],
                descripcion: e[6],
                usr_responsable: e[7],
                usr_creador: e[8],
                estado_vc: e[9],
                fec_fin_estimada: e[10],
                cruzeta: e[11],
                numero_via_cedida: e[12],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

module.exports={
    cargarViasCedidas
}

                