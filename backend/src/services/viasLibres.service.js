const DB = require('../config/bdSgpctContext');

const cargarViasLibres = async (id)=>{
    try {
        let sql = `
        select 
            PK_NRO_VL,
            PK_FECHA_VL,
            FK_NRO_PROG_TRENES,
            FK_NRO_TREN,
            FK_FECHA_TREN,
            FK_RAMAL_ORIGEN,
            FK_EST_ORIGEN,
            KM_INICIAL_VL,
            FK_RAMAL_DESTINO,
            FK_EST_DESTINO,
            KM_FINAL_VL,
            ESTADO_VL,
            FECHA_SALIDA,
            OP_RESPONSABLE,
            FK_RAMAL_POS,
            FK_EST_POS,
            KM_POS_VL,
            FECHA_POS_VL,
            OBSERVACION,
            COD_USR,
            VL_FERRONOR,
            USR_FERRONOR,
            ORDEN_DISCO,
            MANIOBRA,
            CRUZA,
            FECHA_CREACION
        from pct_via_libre
        where estado_vl = 'ASIGNADA'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                nro_vl: e[0],
                fecha_vl: e[1],
                nro_prog_trenes: e[2],
                nro_tren: e[3],
                fecha_tren: e[4],
                ramal_origen: e[5],
                est_origen: e[6],
                km_inicial_vl: e[7],
                ramal_destino: e[8],
                km_final_vl: e[9],
                estado_vl: e[10],
                fecha_salida: e[11],
                op_responsable: e[12],
                ramal_pos: e[13],
                est_pos: e[14],
                km_pos_vl: e[15],
                fecha_pos_vl: e[16],
                observacion: e[17],
                cod_usr: e[18],
                vl_ferronor: e[19],
                orden_disco: e[20],
                maniobra: e[21],
                cruza: e[22],
                fecha_creacion: e[23],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

module.exports={
    cargarViasLibres
}

            