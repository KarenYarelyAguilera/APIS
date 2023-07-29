import { connectDB } from "../config/Conn.js";

export const ModRecordatorio = {

  getCitas: async (citas) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.`IdRecordatorio`, r.`IdCliente`, c.nombre, r.`Nota`, r.`fecha` FROM tbl_recordatorio as r INNER JOIN tbl_cliente as c ON r.`IdCliente`=c.`idCliente` WHERE fecha = ? ",
        [citas.fecha],
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener las citas");
    }
  },
  getCita: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.`IdRecordatorio`, r.`IdCliente`, c.nombre, r.`Nota`, r.`fecha` FROM tbl_recordatorio as r INNER JOIN tbl_cliente as c ON r.`IdCliente`=c.`idCliente`");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener la cita");
    }
  },


  postInsertCita: async (citas) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_recordatorio ( IdRecordatorio,IdCliente,Nota,fecha) values(?,?,?,?);",
        [
          citas.IdRecordatorio,
          citas.IdCliente,
          citas.Nota,
          citas.fecha,

        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error ingresar la cita");
    }
  },


}