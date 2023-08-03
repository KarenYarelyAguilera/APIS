import { connectDB } from "../config/Conn.js";

export const ModParametro = {

  getParametros: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ms_parametros");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los parametros");
    }
  },
  putParametro: async (parametro) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set  Id_Usuario=?, Parametro=?, Valor=?, creado_por=?, fecha_creacion=?, modificado_por=?, fecha_modificacion=? where Id_Parametro =?;",
        [
          parametro.Id_Usuario,
          parametro.Parametro,
          parametro.Valor,
          parametro.creado_por,
          parametro.fecha_creacion,
          parametro.modificado_por,
          parametro.fecha_modificacion,
          parametro.Id_Parametro,

        ]
      )
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el parametro")
    }
  },
  getIntentos: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=1'");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los intentos");
    }
  },
  //Usado en la pantalla del perfil en agregar preguntas según el parámetro
  getPreguntas: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT valor FROM tbl_ms_parametros where `Id_Parametro`=2");
      return filas[0].valor; // Solo devolvemos el valor del parámetro 'ADMIN_PREGUNTAS'
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener las preguntas");
    }
  },
  getImpuesto: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=7'");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el impuesto");
    }
  },
  get_TiempoDReuintentoLogin: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=9'");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el impuesto");
    }
  },
  put_Intentos: async (parametro) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor(?) where `Id_Parametro`=1",
        parametro.Parametro,
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar los intentos");
    }
  },
  put_Preguntas: async (parametro) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor(?) where `Id_Parametro`=2",
        parametro.Parametro,
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el numero de preguntas");
    }
  },
  put_Impuesto: async (parametro) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor(?) where `Id_Parametro`=7",
        parametro.Parametro,
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el impuesto");
    }
  },
  put_TiempoDReuintentoLogin: async (parametro) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor(?) where `Id_Parametro`=9",
        parametro.Parametro,
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el tiempo de Intentos del Login");
    }
  },
};