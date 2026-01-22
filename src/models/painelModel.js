var database = require("../database/config");

function listar() {

    var instrucaoSql = `
    select 
	    genero.nome as categoria,
        count(livro.id) as quantidade
    from genero left join livro on genero.id = livro.fkGenero
    group by genero.nome;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function maisCaros() {

    var instrucaoSql = `
    select 
	    genero.nome as categoria,
        count(livro.id) as quantidade
    from genero left join livro on genero.id = livro.fkGenero
    group by genero.nome;
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    listar,
    maisCaros
}
