var express = require('express');
var router = express.Router();

//var controllers = require ("../controllers/mainControllers");


router.get('/', (req, res) => res.render('index.ejs'));
router.get('/about', (req, res) => res.render('about.ejs'));
router.get('/contact', (req, res) => res.render('contact.ejs'));


module.exports = router;
    