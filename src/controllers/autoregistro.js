
import { ModAutoReg } from "../models/autoregistro.js";


export const ContrAutoReg = {
  postUsuarioAutoRegistro: async (req, res) => {
    try {
      const { usuario, nombre, clave, correo } = req.body;
  
      // Insertar el empleado
      const empleadoInsertado = await ModAutoReg.postInsertEmpleadoAutoRegistro({
        nombre: req.body.nombre,
        apellido: req.body.apellido,
        telefonoEmpleado: req.body.telefonoEmpleado,
        IdSucursal: req.body.IdSucursal,
        IdGenero: req.body.IdGenero,
        numeroIdentidad: req.body.numeroIdentidad
      });
      const idEmpleado = empleadoInsertado.id;
  
      // Insertar el usuario asociado al empleado
      const result = await ModAutoReg.postInsertUsuarioAutoRegistro({
        usuario:usuario,
        nombre:nombre,
        clave:clave,
        correo:correo,
        idEmpleado:idEmpleado // Utiliza el ID del empleado insertado
      });
  
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },
  
};