var express = require("express");
var router = express.Router();

var filmesController = require("../controllers/filmesController");

router.get("/", function (req, res) {
    filmesController.testar(req, res);
});

router.get("/listar", function (req, res) {
    filmesController.listar(req, res);
});

module.exports = router;