var quizModel = require("../models/quizModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA filmesController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function ranking(req, res) {
    quizModel.ranking()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!")
            }
        }).catch(
            function (erro) {
                console.log(erro);
                console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function cadastrar(req, res) {
    var pontuacao = req.body.pontosServer;
    var fk_usuario = req.body.usuarioServer;
    

    // Faça as validações dos valores
    if (pontuacao == undefined) {
        res.status(400).send("Seu pontuacao está undefined!");
    } else if (fk_usuario == undefined) {
        res.status(400).send("Seu fk_usuario está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo quizModel.js
        quizModel.cadastrar(pontuacao, fk_usuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}


module.exports = {
    testar,
    ranking,
    cadastrar
}