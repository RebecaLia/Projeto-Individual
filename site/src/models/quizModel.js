var database = require("../database/config")

function ranking() {
    console.log("ACESSEI O QUIZ_RANKING MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
    SELECT * FROM ranking_quiz INNER JOIN usuarios on usuarios.id = ranking_quiz.fk_usuario
    ORDER BY pontuacao DESC;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function cadastrar(pontuacao, fk_usuario) {
    console.log("ACESSEI O QUIZ_RANKING MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
    var instrucao = `
        INSERT INTO ranking_quiz (pontuacao, fk_usuario) VALUES ('${pontuacao}', '${fk_usuario}');
    `;
    return database.executar(instrucao);
}

module.exports = {
    ranking,
    cadastrar
};