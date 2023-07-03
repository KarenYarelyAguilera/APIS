import { connectDB } from "../config/Conn.js";

export const ModVentaDetalle = {
  
    getVentaDetalle: async () => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("select * from tbl_ventadetalle");
        return filas;
      } catch (error) {
        console.log(error);
        throw new Error("Error al obtener el detalle de la venta");
      } 
   
    },
  
    post_VentaDetalle: async (venta) => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("INSERT INTO  tbl_ventadetalle (IdVenta, IdGarantia ,IdProducto,cantidad,precioExamen) VALUES(?,?,?,?,?);",
          [
              venta.IdVenta,
              venta.IdGarantia,
              venta.IdProducto,
              venta.cantidad,
              venta.precioExamen,
          ]
        );
        return {estado:"ok" };
      } catch (error) {
        console.log(error);
        throw new Error("Error al crear registro");
      }
  },

  put_VentaDetalle: async (venta)=>{
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_ventadetalle  SET IdVenta=?, IdGarantia=? ,IdProducto=? ,cantidad=?, precioExamen=? WHERE IdVentaDetalle =?;",
      [
        venta.IdVenta,
        venta.IdGarantia,
        venta.IdProducto,
        venta.cantidad,
        venta.precioExamen,
        venta.IdVentaDetalle,
      ]
      );
      return {estado:"ok"}
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el registro")
    }
},
  
delete_VentaDetalle: async(venta)=>{
  try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_ventadetalle WHERE IdVentaDetalle =?;",
    [
      venta.IdVentaDetalle,
    ]
    );
      
  } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el registro")
  }
},

  };
