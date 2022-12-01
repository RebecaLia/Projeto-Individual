var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.get("/", function (req, res) {
    quizController.testar(req, res);
});

router.get("/ranking", function (req, res) {
    quizController.ranking(req, res);
});

router.post("/cadastrar", function (req, res) {
    quizController.cadastrar(req, res);
});

module.exports = router;

