var express = require('express');
var router = express.Router();

var controllers = require ("../controllers/mainControllers");


router.get('/', (req, res) => res.render('index'));
router.get('/about', (req, res) => res.render('about'));
router.get('/contact', (req, res) => res.render('contact'));


module.exports = router;
    