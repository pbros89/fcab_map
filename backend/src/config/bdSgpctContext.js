const oracledb = require('oracledb');

//Datos de conexion a la Base de Datos: (SGPCT - PRODUCCION)
db_sgpct = {
    user:process.env.BD_SGPCT_USER,
    password:process.env.BD_SGPCT_PASS,
    connectString:"(DESCRIPTION =(LOAD_BALANCE = ON)(FAILOVER = ON)(ADDRESS = (PROTOCOL = TCP)(HOST = "+process.env.BD_SGPCT_HOST+")(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=SGPCT)(FAILOVER_MODE=(TYPE=SELECT)(METHOD = BASIC))))"
}

//Realizar consulta a la Base de datos:
async function open(sql, binds, autoCommit){
    let con = await oracledb.getConnection(db_sgpct);
    let result = await con.execute(sql,binds,{autoCommit});
    con.release();
    return result;
}
//Realizar la ejecucion de un procedimiento:
async function execute(sql,binds,autoCommit){
    let con;
    try{
        con = await oracledb.getConnection(db_sgpct);
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
