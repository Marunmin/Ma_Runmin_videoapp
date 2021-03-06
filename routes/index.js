var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('home', {
    title: 'My video app',
    message : "Welcome to my video app",
    adult : true,
    children : false,
    kidsmode : config.kidsmode
  });
});

router.get('/cms', (req, res) => {
  console.log('hit the cms route');
  res.render('cmsform', {
    cms : true,
    mainpage : false
  });
});



module.exports = router;
