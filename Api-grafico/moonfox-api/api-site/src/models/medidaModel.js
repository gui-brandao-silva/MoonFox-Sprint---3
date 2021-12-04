var database = require("../database/config");

function buscarUltimasMedidas( limite_linhas) {
    instrucaoSql = `select 
                        temperatura, 
                        momento,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico
                    from tb_registros
                    where fk_sensor = ${40}
                    order by id_registro desc limit ${limite_linhas}`;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal() {
    instrucaoSql = `select 
                        temperatura, 
                         DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fk_sensor 
                        from tb_registros where fk_sensor = ${40} 
                    order by id_registro desc limit 1`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}