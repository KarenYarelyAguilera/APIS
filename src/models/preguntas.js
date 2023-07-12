import { connectDB } from "../config/Conn.js";

export const ModPreguntas = {

    getPreguntas: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("select * from tbl_ms_preguntas");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener las preguntas");
        } 
    },
    postInsertPreguntas: async (preguntas) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas (Pregunta,creado_por,fecha_creacion) values(?,?,?);",
            [
                preguntas.pregunta,
                preguntas.creadoPor,
                preguntas.FechaCrea,
            
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error ingresar las preguntas");
        }
    },
    getRespuestas: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("select * from tbl_ms_preguntas_usuario");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener las respuestas");
        } 
    },
    postInsertRespuestas: async (respuestas) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas_usuario (Id_Usuario,Respuesta,Id_Pregunta,creado_por,fecha_creacion) values(?,?,?,?,?);",
            [
                respuestas.idUser,
                respuestas.idPregunta,
                respuestas.respuesta,
                respuestas.idPregunta,
                respuestas.creadoPor,
                respuestas.fechaCrea,
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error ingresar las respuestas");
        }
    },
    compararRespuesta:async (respuestas)=>{
    try {
      const conexion = await connectDB()
      const [rows] = await conexion.query('select * from tbl_ms_preguntas_usuario  where Id_Pregunta=? and Id_Usuario=? and Respuesta=?',
        [
          respuestas.Id_Pregunta,
          respuestas.Id_Usuario,
          respuestas.Respuesta
        ]
      );


      if (rows.length === 1) {
        return true;
      } else {
        return false;
      }

    } catch (error) {
      console.log(error);
    }

  },


  userExist: async (Usuario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "select Correo_Electronico from TBL_MS_USUARIO  where Correo_Electronico  =  ?",
        [Usuario.correo]
      );

      if (filas.length === 1) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
    }
  },



};