var express = require('express');
var router = express.Router();
var controllers = require("../controllers/mainControllers");
var upload = require("../midllewares/multer")

//var controllers = require ("../controllers/mainControllers");


router.get('/', controllers.index);
router.get('/about', (req, res) => res.render('about.ejs'));
router.get('/contact', (req, res) => res.render('contact.ejs'));

router.get("/products", controllers.productList);

router.get("/products/create", controllers.createForm);
router.post("/products/create", upload.single("imagen"), controllers.create);

router.get("/products/edit/:id", controllers.editForm);
router.post("/products/edit/:id",  upload.single("imagen"), controllers.processEdit);

router.get("/products/detail/:id", controllers.detailForm);
 





module.exports = router;

