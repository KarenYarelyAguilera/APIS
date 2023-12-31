import { ModDescuento } from "../models/descuento.js";

export const ContrDescuento = {

    getDescuento:async(req,res)=>
    {
        const descuento = await ModDescuento.getDescuento()
        res.json(descuento)
    },

    postInsertDescuento:async(req,res)=>
    {
        try {
            const  {estado,descPorcent,descPorcentEmpleado}=req.body;
            const result = await ModDescuento.postInsertDescuento({estado,descPorcent,descPorcentEmpleado});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    putDescuento:async(req,res)=>
    {
        try {
            const  {estado,descPorcent,descPorcentEmpleado,IdDescuento}=req.body;
            const result = await ModDescuento.putDescuento({estado,descPorcent,descPorcentEmpleado,IdDescuento});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    deleteDescuento : async (req,res)=>
    {
        try {
            const  {IdDescuento}=req.body;
            const result = await ModDescuento.deleteDescuento({IdDescuento});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
    
}