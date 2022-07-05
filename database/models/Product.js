module.exports = (sequelize, DataTypes) => {
    let alias = "Product"
    let cols = {
        idProduct : {
            type : DataTypes.INTEGER, 
            primaryKey : true,
            autoIncrement : true,
        }, 
        nombre : {
            type : DataTypes.STRING,
        },
        detalle : {
            type : DataTypes.STRING
        },
        imagen : {
            type : DataTypes.STRING
        },
        precio : {
            type : DataTypes.INTEGER
        },
        categoría : {
            type : DataTypes.STRING
        },
    }

    let config = {
        tableName : "products",
        timestamps : false,

    }

    let product = sequelize.define(alias,cols,config)
    return product
    
}
