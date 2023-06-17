import { ModCompras } from "../models/compra.js";

export const ContrCompra = {

    getCompras: async (req,res)=> {

        const compras = await ModCompras.getCompras()
        res.json(compras)
       
    },

    postInsertCompra: async (req,res)=>{
        try {
            const{IdProveedor,fechaCompra,totalCompra} = req.body;
            const result  = await ModCompras.postInsertCompra({IdProveedor,fechaCompra,totalCompra});
           res.status(201).json({ id: result.id });
             //res.status(200).json(compras);
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateCompra: async (req,res)=>{
    try {
        const{IdProveedor,fechaCompra,totalCompra,IdCompra} = req.body;
            const result  = await ModCompras.putUpdateCompra({IdProveedor,fechaCompra,totalCompra,IdCompra});
           res.status(201).json({ id: result.id});
    } catch (error) {
        console.log(error);
        }
    },

    deleteCompra: async (req,res)=> {

        try {
            const {IdCompra} = req.body;
            const result  = await ModCompras.deleteCompra({IdCompra});
            res.status(201).json({ id: result.id});
        } catch (error) {
            console.log(error);
        }
    },

}