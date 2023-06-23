import { connectDB } from "../config/Conn.js";

export const ModPromocion = {

  getPromociones: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_promocion");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener las promociones");
    }
  },
  postInsertPromocion: async (promocion) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_promocion (fechaInicial, fechaFinal, estado, descPorcent, descripcion) VALUES (?,?,?,?,?);",
        [
          promocion.fechaInicial,
          promocion.fechaFinal,
          promocion.estado,
          promocion.descPorcent,
          promocion.descripcion
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear promocion");
    }
  },
  putUpdatePromocion: async (promocion) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_promocion  SET `fechaInicial`=?,fechaFinal=?,`estado`=?,`descPorcent`=?, descripcion=?  WHERE `IdPromocion`=?;",
        [
          promocion.fechaInicial,
          promocion.fechaFinal,
          promocion.estado,
          promocion.descPorcent,
          promocion.descripcion,
          promocion.IdPromocion,
        ]
      )
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar la promocion")
    }
  },
  delPromocion: async (promocion) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_promocion WHERE IdPromocion = ?;", [
        promocion.IdPromocion,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar la promocion");
    }
  },
 
};
