const oracledb = require('oracledb');

try {
    oracledb.initOracleClient({libDir: '/Users/pedrobros/Downloads/instantclient_19_8'});
} catch (err) {
    console.error('Whoops!');
    console.error(err);
    process.exit(1);
}

//Datos de conexion a la Base de Datos: (BD_MAPA - DESARROLLO)
db_mapa = {
    user:process.env.BD_MAPA_DEV_USER,
    password:process.env.BD_MAPA_DEV_PASS,
    connectString: "(DESCRIPTION =(LOAD_BALANCE = ON)(FAILOVER = ON)(ADDRESS = (PROTOCOL = TCP)(HOST = "+process.env.BD_MAPA_DEV_HOST+")(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=DESA)(FAILOVER_MODE=(TYPE=SELECT)(METHOD = BASIC))))"
}
//Datos de conexion a la Base de Datos: (BD_MAPA - PRODUCCION)
db_mapa_prod = {
    user:process.env.BD_MAPA_PROD_USER,
    password:process.env.BD_MAPA_PROD_PASS,
    connectString:process.env.BD_MAPA_PROD_STRING
}

//Realizar consulta a la Base de datos:
async function open(sql, binds, autoCommit){
    let con = await oracledb.getConnection(process.env.NODE_ENV == 'prod' ? db_mapa_prod : db_mapa);
    let result = await con.execute(sql,binds,{autoCommit});
    con.release();
    return result;
}
//Realizar la ejecucion de un procedimiento:
async function execute(sql,binds,autoCommit){
    let con;
    try{
        con = await oracledb.getConnection(process.env.NODE_ENV == 'prod' ? db_mapa_prod : db_mapa);
        const result = await con.execute(sql,binds,{autoCommit});
        return result;
    } catch (err){
        console.error(err);
    }finally{
        if (con) {
            try {
              await con.close();
            } catch (err) {
              con.error(err);
            }
        }
    }
}

module.exports = {
    open,
    execute,
    oracledb
};
