var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res)  {
  connect.query('SELECT * FROM tbl_film WHERE film_kind=1 ', function (err, result) {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.render('adventure', {
        title  : 'Videoapp - adventure',
        message: 'the adventure vedio',
        data: result
        adult: true,
        children: false
      });
    }
  });
});

module.exports = router;
