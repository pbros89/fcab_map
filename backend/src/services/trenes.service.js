const DB = require('../config/bdSgpctContext');


const cargarTrenes = async ()=>{
    try {
        let sql = `
        SELECT 
            tr.nro_prog,
            tr.tren nro_tren,
            tr.salida hr_salida,
            tr.llegada hr_llegada,
            tr.nombre_tren,
            tr.sentido,
            tr.color,
            tr.evento_actual,
            to_char(po.fecha_pos, 'dd-mm-yyyy hh24:mi') fecha_pos,
            to_char(po.fecha_tren, 'dd-mm-yyyy') fecha_tren,
            po.km,
            po.velocidad,
            ra.cod_ramal,
            po.este utm_x,
            po.norte utm_y
        from table (PCT_LISTRENESEJECUCIONACTIVOS()) tr, stvl_pos_monitoreo po, stvl_ramales ra
        where tr.tren = po.numero_tren 
        and po.ramal = ra.numero_ramal
        and tipo_tren = 'SERVICIO'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                nro_prog: e[0],
                nro_tren: e[1],
                hr_salida: e[2],
                hr_llegada: e[3],
                nombre_tren: e[4],
                sentido: e[5],
                color: e[6],
                evento_actual: e[7],
                fecha_pos: e[8],
                fecha_tren: e[9],
                km: e[10],
                velocidad: e[11],
                cod_ramal: e[12],
                utm_x: e[13],
                utm_y: e[14],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarComposicionTren = async (tren, programa)=>{
    try {
        let sql = `
            SELECT nrotrenmr,
                tipomr, 
                nummr numero,
                (propmr || '-'||nummr ) nummr,
                modelomr,
                nvl(tonnetasmr,0) tonnetasmr,
                (nvl(tontaramr,0) + nvl(tonnetasmr,0)) tonbrutasmr,
                estadomr,
                PCT_OBT_INDICADOR_MANTE(propmr,nummr,tipomr) marcamr,
                PCT_OBT_RESTRIC_MANTE(propmr,nummr,tipomr) descmarca,
                activarmr,
                ssgmr,
                ssxamr,
                solicitudmr,
                postrenmr,
                trenempujar,
                to_char(fechaempujar, 'ddmmyyyy')  fechaaempujar,
                PCT_PG_COMPOSICION_TREN_VW.largo largomr, 
                loco_empuje,
                decode(solicitudmr,null,null,Pct_Obt_Nro_Guia_Carro(propmr,nummr)) nro_guia,
                decode(solicitudmr, null, 0,1) cargado,
                decode(solicitudmr, null, 1,0) vacio,
                st.cod_producto, 
                st.sector_origen, 
                st.sector_destino,
                pr.cont_carro_mel
            FROM PCT_PG_COMPOSICION_TREN_VW
            left join vf_sol_transportes st on (nro_solicitud = solicitudmr and cod_emp = 1)
            left join (select count(1) cont_carro_mel, cod_detalle from mr_param_det where cod_param = 265 group by cod_detalle) pr on (cod_detalle = nummr)
            WHERE (PCT_PG_COMPOSICION_TREN_VW.nroprogtrenmr = '${programa}') AND
            (PCT_PG_COMPOSICION_TREN_VW.nrotrenmr = '${tren}') 
            order by postrenmr`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                nrotrenmr: e[0],
                tipomr: e[1],
                numero: e[2],
                nummr: e[3],
                modelomr: e[4],
                tonnetasmr: e[5],
                tonbrutasmr: e[6],
                estadomr: e[7],
                marcamr: e[8],
                descmarca: e[9],
                activarmr: e[10],
                ssgmr: e[11],
                ssxamr: e[12],
                solicitudmr: e[13],
                postrenmr: e[14],
                trenempujar: e[15],
                fechaaempujar: e[16],
                largomr: e[17],
                loco_empuje: e[18],
                nro_guia: e[19],
                cargado: e[20],
                vacio: e[21],
                cod_producto: e[22],
                sector_origen: e[23],
                sector_destino: e[24],
                cont_carro_mel: e[25],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarOperadoresTren = async (tren, programa)=>{
    try {
        let sql = `
        SELECT tren.nro_tren, 
            op.pfk_nro_tripulacion nro_tripulacion, 
            p.nom_fun||' '||p.app_fun||' '||p.apm_fun nom_oper,
            to_char(s.pk_fecha_hora_toma_serv, 'hh24:mi') hora_toma, 
            RUT_CON_ID codrut, 
            op.tipo_operador
        from  pct_pg_operadores op, mr_personal_vw p , pct_toma_deja_serv_personal s, (
            SELECT  
                comp.pfk_nro_tren nro_tren,  
                nvl(comp.fk_nro_tripulacion, 0) trip
                            FROM  pct_pg_composicion comp, 
                                (select pfk_nro_tren, max(pk_correlativo_comp) pk_correlativo_comp
                                from pct_pg_composicion 
                                WHERE pfk_nro_prog_trenes = ${programa}
                                GROUP BY pfk_nro_tren) maxcomp
                            WHERE comp.PFK_NRO_TREN = MAXCOMP.pfk_nro_tren
                            AND comp.pk_correlativo_comp = MAXCOMP.pk_correlativo_comp
                            AND pfk_nro_prog_trenes = ${programa}
                            ) tren
        where op.pfk_rut = p.rut_fun
        and   p.rut_fun = s.pfk_rut
        and   op.pfk_nro_prog_trenes = ${programa}
        and tren.trip = op.pfk_nro_tripulacion
        and   s.fecha_hora_deja_serv is null
        and tren.nro_tren = '${tren}'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                nro_tren: e[0],
                nro_tripulacion: e[1],
                nom_oper: e[2],
                hora_toma: e[3],
                codrut: e[4],
                tipo_operador: e[5],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}



module.exports={
    cargarTrenes,
    cargarComposicionTren,
    cargarOperadoresTren
}