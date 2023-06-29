import { connectDB } from "../config/Conn.js";

export const ModCompraDetalle = {
  
    getCompraDetalle: async () => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("select * from tbl_compradetalle");
        return filas;
      } catch (error) {
        console.log(error);
        throw new Error("Error al obtener el detalle de la compra");
      } 
   
    },
  
    post_CompraDetalle: async (compra) => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("INSERT INTO  tbl_compradetalle (IdCompra,cantidad,idProducto,costoCompra) VALUES(?,?,?,?);",
          [
              compra.IdCompra,
              compra.cantidad,
              compra.idProducto,
              compra.costoCompra,
          ]
        );
        return { estado:"ok"};
      } catch (error) {
        console.log(error);
        throw new Error("Error al crear registro");
      }
  },

  put_CompraDetalle: async (compra)=>{
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_compradetalle  SET IdCompra=?, cantidad=?,idProducto=?,costoCompra=? WHERE IdCompraDetalle =?;",
      [
            compra.IdCompra,
            compra.cantidad,
            compra.idProducto,
            compra.costoCompra,
            compra.IdCompraDetalle,
      ]
      );
      return {estado:"ok"}
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el registro")
    }
},
  
delete_CompraDetalle: async(compra)=>{
  try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_compradetalle WHERE IdCompraDetalle =?;",
    [
      compra.IdCompraDetalle,
    ]
    );
      
  } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el registro")
  }
},

  };
