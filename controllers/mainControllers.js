var express = require("express");
var router = express.Router()

const db = require("../database/models")

const controllers = {
    index : function (req, res){
        db.Product.findAll(
        )
        .then(products=>{
            res.render("index",{products})
        })
    }, 
    createForm: (req, res) => {
        res.render("productCreate")
    },

    create: (req, res) => {
        db.Product.create({
            nombre: req.body.nombre,
            detalle: req.body.detalle,
            imagen: req.file.filename,
            precio: req.body.precio,
            categoria: req.body.categoria,
          })
          res.redirect("/");
    }
}

module.exports = controllers
