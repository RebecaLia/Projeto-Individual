var express = require("express");
var router = express.Router();

var filmesController = require("../controllers/quizController");

router.get("/", function (req, res) {
    quizController.testar(req, res);
});

router.get("/listar", function (req, res) {
    quizController.listar(req, res);
});

module.exports = router;