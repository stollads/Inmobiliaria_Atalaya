var express = require("express");
var router = express.Router()
var {validationResult}= require("express-validator");

const db = require("../database/models")

const controllers = {
    index: function (req, res) {
        db.Product.findAll(
        )
            .then(products => {
                res.render("index", { products })
            })
    },
    createForm: (req, res) => {
        res.render("productCreate")
    },

    create: (req, res) => {
        const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.render("productCreate", {
        errors: errors.errors,
        oldData: req.body
      });
    }
        db.Product.create({
            nombre: req.body.nombre,
            detalle: req.body.detalle,
            imagen: req.file.filename,
            precio: req.body.precio,
            categoria: req.body.categoria,
        })
        res.redirect("/");
    },
    editForm: (req, res) => {
        db.Product.findByPk(req.params.id)
            .then(products => { res.render("productEdit", { products }) })
    },
    processEdit:(req, res)=>{
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
          return res.render("productEdit", {
            errors: errors.errors,
            product:req.body
          });
        }
        db.Product.update({
          nombre: req.body.nombre,
          precio: req.body.precio,
          categorias: req.body.categorias,
          detalle: req.body.detalle,
          imagen: req.file.filename,
        },{
            where:{
                idProduct:req.params.id
            }
        })
        res.redirect('/')

    },

    productList: (req, res) => {
        db.Product.findAll()
        .then(products=>{
            res.render("productList", {products});

        })
    },
    detailForm: (req, res) => {
     db.Product.findByPk(req.params.id)
     .then(products => {res.render("productDetail", {products})})   

    },

    delete: (req, res) => {
        db.Product.destroy({
            where:{
                idProduct:req.params.id
            }
        })
        res.redirect("/")
    }

    
    
}

module.exports = controllers
