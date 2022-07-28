const DB = require('../config/bdSgpctContext');

const cargarEstaciones = async ()=>{
    try {
        let sql = `
        select 
            er.*,
            (select max(utm_x) 
            from STVL_GEOREFERENCIA
            where cod_ramal = er.cod_ramal
            and KILOMETRAJE = (
                select NVL(max(KILOMETRAJE), -1) KM_BD
                from STVL_GEOREFERENCIA
                where cod_ramal = er.cod_ramal
                and KILOMETRAJE <= er.KM_POSICIONAMIENTO)
            ) as utm_x,
            (select max(utm_y) 
            from STVL_GEOREFERENCIA
            where cod_ramal = er.cod_ramal
            and KILOMETRAJE = (
                select NVL(max(KILOMETRAJE), -1) KM_BD
                from STVL_GEOREFERENCIA
                where cod_ramal = er.cod_ramal
                and KILOMETRAJE <= er.KM_POSICIONAMIENTO)
            ) as utm_y
        from (
            SELECT 
                er.COD_RAMAL, 
                er.COD_ESTACION, 
                er.KM_INI, 
                er.km_fin, 
                er.KM_INI + 
                (er.KM_FIN - er.KM_INI)/2 KM_POSICIONAMIENTO
            from STVL_ESTACION_RAMAL ER
            where er.COD_RAMAL IN (
                select distinct gr.COD_RAMAL
                from STVL_GEOREFERENCIA gr)
            and KM_INI is not null
            order by ER.COD_RAMAL, ER.KM_INI) er`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                cod_ramal: e[0],
                cod_estacion: e[1],
                km_ini: e[2],
                km_fin: e[3],
                km_posicionamiento: e[4],
                utm_x: e[5],
                utm_y: e[6],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


const cargarEstacionesInactivas = async () => {
    
    try {
        let sql = `
        SELECT  PFK_COD_ESTACION estacion, 
            TO_CHAR(FECHA_INI_ESTADO, 'DD/MM/YYYY HH24:MI:SS') fecha_crea, 
            upper(RESTRICCION) restriccion, 
            USUARIO_CREO usuario_crea,
            TIPO tipo,
            CASE HABILITADO_S_N 
                WHEN 'S' THEN 'SI'
                ELSE 'NO'
            END habilitado,
            0 CHEK,
            CASE AUTOMATICA_MR
                WHEN 'S' THEN 'SI'
                else 'NO'
            end AUTOMATICA_MR,
            accion_auto_mr
        FROM     PCT_CRUZA_MANIO_ESTACION c

        WHERE     FECHA_FIN_ESTADO IS NULL
        and nvl(HABILITADO_S_N, 'S') = 'N'
        order by estacion`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                estacion: e[0],
                fecha_crea: e[1],
                restriccion: e[2],
                usuario_crea: e[3],
                tipo: e[4],
                habilitado: e[5],
                chek: e[6],
                automatica_mr: e[7],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


const cargarEstacionesPizarra = async () => {
    
    try {
        let sql = `
        SELECT TER.*, min(geo.utm_x) utm_x, min(geo.utm_y) utm_y
        FROM(
        SELECT
            nvl(pd.valor_param_1, 'REGULAR') tipo,
            est.cod_ramal,
            est.cod_estacion, 
            est.kil_inicio, 
            est.kil_final
            
        from bd_mantvia.vo_estacion_ramal est
        left join pct_parametros_det pd on (pd.pfk_cod_param = 231 and pd.descorta = est.cod_estacion and valor_param_1 <> 'NO_CONSIDERAR')
        ) TER, stvl_georeferencia GEO
        WHERE TER.COD_RAMAL = GEO.COD_RAMAL
        AND geo.kilometraje BETWEEN TER.KIL_INICIO AND TER.KIL_FINAL
        group by ter.tipo,
            ter.cod_ramal,
            ter.cod_estacion, 
            ter.kil_inicio, 
            ter.kil_final`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                tipo: e[0],
                cod_ramal: e[1],
                cod_estacion: e[2],
                kil_inicio: e[3],
                kil_final: e[4],
                utm_x: e[5],
                utm_y: e[6],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


const cargarContadorLoco = async (estacion) => {
    
    try {
        let sql = `
        SELECT estacion, linea, count(*) cant, mar_mante, case mar_mante when 'MANTACT' then 'AMARILLO' when 'MANTINACT' then 'ROJO' else '' end color
        from bd_sgmr.mr_locomotoras
        where estado = 'ESTAC' 
        and tren is null
        AND estacion = '${estacion}'
        --and linea = '$r2->LINEA'
        and tipo_loco <> 'AUTO'
        group by estacion, linea, mar_mante, case mar_mante when 'MANTACT' then 'AMARILLO' when 'MANTINACT' then 'ROJO' else '' end
        order by 1, 2, 3
        `;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                estacion: e[0],
                linea: e[1],
                cant: e[2],
                mar_mante: e[3],
                color: e[4],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarDetalleLoco = async (estacion, linea) => {
    
    try {
        let sql = `
        SELECT estacion, linea, loco, case mar_mante when 'MANTACT' then 'AMARILLO' when 'MANTINACT' then 'ROJO' else '' end color,
                PCT_OBT_RESTRIC_MANTE(1,loco,'LOCO') obs_marca, mar_mante
        from bd_sgmr.mr_locomotoras
        where estado = 'ESTAC' 
        and tren is null
        AND estacion = '${estacion}'
        and linea = '${linea}'
        and tipo_loco <> 'AUTO'
        --group by mar_mante, case mar_mante when 'MANTACT' then 'AMARILLO' when 'MANTINACT' then 'ROJO' else '' end
        order by  1, 2, 3`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                estacion: e[0],
                linea: e[1],
                loco: e[2],
                color: e[3],
                obs_marca: e[4],
                mar_mante: e[5],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarContadorCarro = async (estacion) => {
    
    try {
        let sql = `
        SELECT 
            estacion, 
            tipo_carro,
            linea, 
            marca_mante, 
            cod_servicio, 
            case marca_mante when 'MACAR' then 'ROJO' when 'MAMOV' then 'AMARILLO' when 'MAPRE' then 'AMARILLO' end color, 
            case when num_solicitud is null then 'c/v' else 'c/c' end estado_carga,
            count(*) cant
        from bd_sgmr.mr_carros
        where estado = 'ESTAC'
        and tren is null
        and estacion = '${estacion}'
        --and linea = '$r2->LINEA'
        and not exists (select 1 from pct_parametros_det where pfk_cod_param = 231 and descorta = estacion and valor_param_1 = 'SOLO_LOCOS')
        group by estacion, tipo_carro, linea, marca_mante, cod_servicio, case when num_solicitud is null then 'c/v' else 'c/c' end
        order by 1, 2, 3 desc`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                estacion: e[0],
                tipo_carro: e[1],
                linea: e[2],
                marca_mante: e[3],
                cod_servicio: e[4],
                color: e[5],
                estado_carga: e[6],
                cant: e[7],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}

const cargarDetalleCarro = async (estacion, linea, servicio) => {
    
    try {
        let sql = `
        SELECT estacion, tipo_carro, linea, cod_servicio, numero, marca_mante, case marca_mante when 'MACAR' then 'ROJO' when 'MAMOV' then 'AMARILLO' when 'MAPRE' then 'AMARILLO' end color, 
            PCT_OBT_RESTRIC_MANTE(propietario, numero,'C') obs_marca,
            case when num_solicitud is null then 'c/v' else 'c/c' end estado_carga
        from bd_sgmr.mr_carros
        where estado = 'ESTAC'
        and tren is null
        and estacion = '${estacion}'
        and linea = '${linea}'
        and cod_servicio = '${servicio}'
        and not exists (select 1 from pct_parametros_det where pfk_cod_param = 231 and descorta = estacion and valor_param_1 = 'SOLO_LOCOS')
        order by 1,2,3,4,5`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                estacion: e[0],
                tipo_carro: e[1],
                linea: e[2],
                cod_servicio: e[3],
                numero: e[4],
                marca_mante: e[5],
                color: e[6],
                obs_marca: e[7],
                estado_carga: e[8],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


const cargarTerminalAcido = async (terminal) => {
    
    try {
        let sql = `
        SELECT 
            A1.PFK_COD_SERVICIO,
            A1.PFK_COD_TERMINAL,
            A1.PFK_TIPO_TERMINAL,
            A1.PFK_COD_ESTANQUE,
            A1.PK_FECHA_CONTROL,
            A1.NIVEL_ACIDO,
            A1.OBS_ACIDO,
            A1.TON_ACIDO,
            A1.ORIGEN,
            A1.ID_ORIGEN
        FROM BD_SGMR.MR_LECTURAS_DIARIAS_ACIDO A1,
        (SELECT 
            PFK_COD_SERVICIO,
            PFK_COD_TERMINAL,
            PFK_TIPO_TERMINAL,
            PFK_COD_ESTANQUE,
            MAX(PK_FECHA_CONTROL) PK_FECHA_CONTROL
        FROM BD_SGMR.MR_LECTURAS_DIARIAS_ACIDO
        GROUP BY PFK_COD_SERVICIO,
            PFK_COD_TERMINAL,
            PFK_TIPO_TERMINAL,
            PFK_COD_ESTANQUE) A2
        WHERE A1.PFK_COD_SERVICIO = A2.PFK_COD_SERVICIO
        AND A1.PFK_COD_TERMINAL = A2.PFK_COD_TERMINAL
        AND A1.PFK_TIPO_TERMINAL = A2.PFK_TIPO_TERMINAL
        AND A1.PFK_COD_ESTANQUE = A2.PFK_COD_ESTANQUE
        AND A1.PK_FECHA_CONTROL = A2.PK_FECHA_CONTROL
        AND A1.PFK_COD_TERMINAL = '${terminal}'`;

        let data = await DB.open(sql,[],false);

        let result = data.rows?.map((e)=>{
            return {
                pfk_cod_servicio: e[0],
                pfk_cod_terminal: e[1],
                pfk_tipo_terminal: e[2],
                pfk_cod_estanque: e[3],
                pk_fecha_control: e[4],
                nivel_acido: e[5],
                ton_acido: e[6],
            };
        }) ?? [];
        return result;
    }catch(e) {
        console.log(e);
        return [];
    }
}


module.exports={
    cargarEstaciones,
    cargarEstacionesInactivas,
    cargarEstacionesPizarra,
    cargarContadorLoco,
    cargarDetalleLoco,
    cargarContadorCarro,
    cargarDetalleCarro,
    cargarTerminalAcido
}