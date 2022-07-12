module.exports = (sequelize, DataTypes) => {
    let alias = "Product"
    let cols = {
        idProduct : {
            type : DataTypes.INTEGER, 
            primaryKey : true,
            autoIncrement : true,
        }, 
        nombre : {
            type : DataTypes.STRING(100),
        },
        detalle : {
            type : DataTypes.STRING(999)
        },
        imagen : {
            type : DataTypes.STRING(100)
        },
        precio : {
            type : DataTypes.INTEGER
        },
        categoria : {
            type : DataTypes.STRING(999)
        },
    }

    let config = {
        tableName : "products",
        timestamps : false,

    }

    let product = sequelize.define(alias,cols,config)
    return product
    
}
