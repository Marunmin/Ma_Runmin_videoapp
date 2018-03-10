var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res)  {
  connect.query('SELECT * FROM tbl_film ', function (err, result) {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('adult', {
        title  : 'Videoapp - adult',
        message: 'the adult vedio',
        data: result
        adult: true,
        children: false
      });
    }
  });
});

module.exports = router;
