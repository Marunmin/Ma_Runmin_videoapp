var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res)  {
  connect.query('SELECT * FROM tbl_film WHERE film_kind=3', function (err, result) {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('children', {
        title  : 'Videoapp - children',
        message: 'the children vedio',
        data: result
        adult: false,
        children: true
      });
    }
  });
});

module.exports = router;
