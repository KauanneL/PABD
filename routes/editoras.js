let express = require('express');
let db = require('../utils/db')
let router = express.Router();

router.get('/listar', function(req, res) {
    var cmd = ' SELECT * FROM tb_editora ORDER BY nome';
    db.query(cmd, [], function(erro, listagem){
        if (erro){
            res.send(erro);
        }
        res.render('editoras-lista', {resultado: listagem});
    });
});

router.get('/add', function(req, res) {
   res.render('editoras-add');
});

router.get('/preenche-select', function(req, res) {
  var cmd = ' SELECT id_editora, nome FROM tb_editora ORDER BY nome';
  db.query(cmd, [], function(erro, listagem){
      if (erro){
          res.send(erro);
      }
      res.json({resultado: listagem});
  });
});

router.get('/add', function(req, res) {
 res.render('editoras-add');
});




module.exports = router; 