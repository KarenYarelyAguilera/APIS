import { connectDB } from "../config/Conn.js";

export const ModKardex = {
  
    getKardex: async () => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("select * from tbl_kardex");
        return filas;
      } catch (error) {
        console.log(error);
        throw new Error("Error al obtener el registro");
      } 
   
    },
  
    post_Kardex: async (kardex) => {
      try {
      const conexion = await connectDB();
            const [filas] = await conexion.query("INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(?,?,?,?,?);",
          [
            kardex.IdTipoMovimiento,
            kardex.IdProducto,
            kardex.Id_Usuario,
            kardex.fechaYHora,
            kardex.cantidad,
          ]
        );
        return { estado:"ok"};
      } catch (error) {
        console.log(error);
        throw new Error("Error al agregar registro");
      }
  },

  };
