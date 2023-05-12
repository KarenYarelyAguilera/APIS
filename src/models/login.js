import { connectDB } from "../config/Conn.js";
import bcrypt from "bcrypt";

export const ModLogin = {

  getPreguntas: async (Usuario)=>{
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("select pu.`Id_Usuario`,p.`Pregunta`,pu.`Respuesta`, p.`Id_Pregunta` from tbl_ms_preguntas as p INNER join tbl_ms_preguntas_usuario as pu on pu.`Id_Pregunta`= p.`Id_Pregunta` INNER join tbl_ms_usuario as msu on pu.`Id_Usuario`=msu.`Id_Usuario` where msu.`Correo_Electronico` = ?",
        [Usuario.correo] 
      )
      return filas
    } catch (error) {
      
    }

  },

  userExist: async (Usuario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "select u.Nombre_Usuario,u.Estado_Usuario,r.Rol,u.Correo_Electronico,u.Id_Usuario from TBL_MS_USUARIO as u INNER JOIN tbl_ms_roles as r  ON  u.`Id_Rol` = r.`Id_Rol`   where Correo_Electronico  =  ?",
        [Usuario.correo]
      );

      if (filas.length === 1) {
        return filas;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
    }
  },

  //obtengo la clave para compararla luego con el metodo comparePass que esta declarado mas abajo.
  getPsswrd: async (clave) => {
    try {
      console.log(clave);
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT `Contrasenia` from tbl_ms_usuario WHERE `Correo_Electronico` = ?;",
        [clave.correo]
      );

      const compare = {
        psswrd:clave.clave,
        hashed:filas[0].Contrasenia
      }

      return await ModLogin.comparePass(compare)

    } catch (e) {
      throw e;
    }
  },

  //De momento solo encripta la contraseña
  passEncript: async (clave) => {
    const rondasSalto = 10;
    try {
      const saltos = await bcrypt.genSalt(rondasSalto);
      const hash = await bcrypt.hash(clave.psswrd, saltos);
      return hash;
    } catch (error) {
      throw new Error(error);
    }
  },

  //Devuelve true si la contraseña encriptada coincide con el string.
  comparePass: async (claves) => {
    try {
      const match = await bcrypt.compare(claves.psswrd, claves.hashed);
      return match;
    } catch (error) {
      throw new Error("Error al comparar las contraseñas");
    }
  }
};
