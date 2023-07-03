
import { ModAutoReg } from "../models/autoregistro.js";


export const ContrAutoReg = {
  postEmpleadoAutoRegistro: async (req, res) => {
    try {
        const {nombre, apellido, telEmple, idGenero, numId } = req.body;
        const result = await ModAutoReg.postInsertEmpleadoAutoRegistro({
            nombre,
            apellido,
            telEmple,
            idGenero,
            numId,
        });
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Error al crear empleado autoregistro" });
    }
},
postUsuarioAutoRegistro: async (req, res) => {
    try {
      const {usuario, nombre, clave, correo} = req.body;
      const result = await ModAutoReg.postInsertUsuarioAutoRegistro({
        usuario,
        nombre,
        clave,
        correo,
      });
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },


};
