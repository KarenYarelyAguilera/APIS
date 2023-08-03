import { ModGenero } from "../models/genero.js";

export const ContrGenero= {

    getGenero:async(req,res)=>{
        const genero =await ModGenero.getGenero()
        res.json(genero)
    },

}
