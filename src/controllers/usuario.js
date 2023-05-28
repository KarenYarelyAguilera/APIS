import { ModUsuarios } from "../models/usuario.js";

export const ContrUsuario = {

    getUsuarios:async (req,res)=>{
        const users = await ModUsuarios.getUsuarios()
        res.json(users)
    },
    postUsuario: async (req,res)=>{
        try {
            const {id,usuario,nombre,clave,correo,rol } = req.body;
            const result = await ModUsuarios.postInsertUsuario({ id,usuario,nombre,clave,correo,rol });
            res.status(201).json({ id: result.id });
          } catch (error) {
            console.log(error);
            res.status(500).json({ message: 'Error creating user' });
          }
    },
    puUsuario:async (req,res)=>{
      try {
        const{ usuario, nombreUsuario,  estadoUsuario, clave, idRol,correo, idEmpleado,idUsuario}=req.body;
        const result= await ModUsuarios.putUpdateUsuario({usuario, nombreUsuario,  estadoUsuario, clave, idRol,correo, idEmpleado,idUsuario});
        res.status(200).json({response:"ok"})
      } catch (error) {
        console.log(error);
        
      }
    }
}


