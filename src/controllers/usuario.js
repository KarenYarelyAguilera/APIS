import { ModUsuarios } from "../models/usuario.js";

export const ContrUsuario = {
  getUsuarios: async (req, res) => {
    const users = await ModUsuarios.getUsuarios();
    res.json(users);
  },
  postUsuario: async (req, res) => {
    try {
      const { id, usuario, nombre, clave, correo, rol } = req.body;
      const result = await ModUsuarios.postInsertUsuario({
        id,
        usuario,
        nombre,
        clave,
        correo,
        rol,
      });
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },
  putUsuario: async (req, res) => {
    try {
      const {usuario,nombreUsuario,estadoUsuario,clave,idRol,correo,idEmpleado,idUsuario,} = req.body;
      const result = await ModUsuarios.putUpdateUsuario({
        usuario,
        nombreUsuario,
        estadoUsuario,
        clave,
        idRol,
        correo,
        idEmpleado,
        idUsuario,
      });
      res.status(200).json({ response: "Ok" });
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  delUsuario: async (req,res)=>{
    try {
      const {id} = req.body
      const result = await ModUsuarios.delUsuario({id})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  getFechaExp:async (req,res)=>{
    try {
      const {correo} = req.body
      const result = await ModUsuarios.getFechaExp({correo})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  putUpdateEstado:async (req,res)=>{
    try {
     const {correo}=req.body
     const result = await ModUsuarios.putUpdateEstado({correo})
     res.status(200).json(result) 
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  putUpdatePassword: async (req,res)=>{
    try {
     const {correo,clave,id,autor}= req.body
     const result = await ModUsuarios.putUpdatePassword({correo,clave})
     const result2= await ModUsuarios.postHistPasswrd({id,clave,autor})
     res.status(200).json(result) 
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  postHistPassword:async (req,res)=> {
    try {
      const {id,clave,autor}=req.body
      const result = await ModUsuarios.postHistPasswrd({id,clave,autor})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  }
};
