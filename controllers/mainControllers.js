var express = require("express");
var router = express.Router()

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
        db.Product.create({
            nombre: req.body.nombre,
            detalle: req.body.detalle,
            imagen: req.file.filename,
            precio: req.body.precio,
            descripcion: req.body.descripcion,
        })
        res.redirect("/");
    },
    editForm: (req, res) => {
        db.Product.findByPk(req.params.id)
            .then(products => { res.render("productEdit", { products }) })
    },
    processEdit: (req, res) => {
        db.Product.update({
                nombre: req.body.nombre,
                precio: req.body.precio,
                detalle: req.body.detalle,
                descripcion: req.body.descripcion,
                imagen: req.file.filename
              },{
                where: {
                  idProduct: req.params.id
                }
        })
        res.redirect("/");
    
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

    
    
}

module.exports = controllers
