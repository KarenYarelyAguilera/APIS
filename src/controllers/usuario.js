import { ModUsuarios } from "../models/usuario.js";

export const ContrUsuario = {

    getUsuarios:async (req,res)=>{
        const users = await ModUsuarios.getUsuarios()
        res.json(users)
    },
    postUsuario: async (req,res)=>{
        try {
            const {id,usuario,nombre,clave,correo,rol } = req.body;
            console.log(req.body);
            const result = await ModUsuarios.postInsertUsuario({ id,usuario,nombre,clave,correo,rol });
            res.status(201).json({ id: result.id });
          } catch (error) {
            console.log(error);
            res.status(500).json({ message: 'Error creating user' });
          }
    }
}


