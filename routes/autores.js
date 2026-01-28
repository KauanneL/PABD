let express = require('express');
let db = require('../utils/db')
let router = express.Router();

router.get('/listar', function(req, res) {
    var cmd = 'SELECT * FROM tb_autor ORDER BY nome';
    db.query(cmd, [], function(erro, listagem){
        if (erro){
            res.send(erro);
        }
        res.render('autores-lista', {resultado: listagem});
    });
});

router.get('/preenche-select', function(req, res) {
    var cmd = 'SELECT id_autor, nome FROM tb_autor ORDER BY nome';
    db.query(cmd, [], function(erro, listagem){
        if (erro){
            res.send(erro);
        }
        res.json({resultado: listagem});
    });
});

router.get('/add', function(req, res) {
   res.render('autores-add');
});

module.exports = router; 