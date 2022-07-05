var express = require('express');
var router = express.Router();
var controllers = require("../controllers/mainControllers");

//var controllers = require ("../controllers/mainControllers");


router.get('/', controllers.index);
router.get('/about', (req, res) => res.render('about.ejs'));
router.get('/contact', (req, res) => res.render('contact.ejs'));


module.exports = router;
