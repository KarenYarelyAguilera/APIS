import { connectDB } from "../config/Conn.js";

export const ModMarca = {
  
  getMarcas: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_marca");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener las marcas");
    } 
  },

  postInsertMarca: async (marca) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_marca (descripcion) values (?);",
        [
          marca.descripcion,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear marca");
    }
  },
  putUpdateMarca: async (marca)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_marca set descripcion = ? WHERE IdMarca= ?;",
        [
          marca.descripcion,
          marca.IdMarca,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar la marca")
      }
  },
  delMarca: async (marca) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_marca WHERE IdMarca = ?;", [
        marca.IdMarca,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar la marca");
    }
  },
};
