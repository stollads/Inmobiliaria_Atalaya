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
    }
}

module.exports = controllers
