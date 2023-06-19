import { connectDB } from "../config/Conn.js";

export const ModVentaDetalleProm = {
    getVentDetalleProm: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT * FROM tbl_ventadetallepromocion");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener el registro");
        } 
    },
    post_ventadetallepromo: async (venta) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_ventadetallepromocion (IdVenta,IdPromocion,cantidad,precioVenta) VALUES(?,?,?,?);",
            [
                venta.IdVenta,
                venta.IdPromocion,
                venta.cantidad,
                venta.precioVenta,
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error al crear registro");
        }
    },
    put_ventadetallepromo: async (venta)=>{
        try {
          const conexion = await connectDB()
          const [filas] = await conexion.query("UPDATE tbl_ventadetallepromocion  SET IdVenta=?,IdPromocion=?,cantidad=?,precioVenta=? WHERE IdVentaDetallePromocion =?;",
          [
                venta.IdVenta,
                venta.IdPromocion,
                venta.cantidad,
                venta.precioVenta,
                venta.IdDetalle,
          ]
          );
          return {estado:"ok"}
        } catch (error) {
          console.log(error);
          throw new Error("Error al actualizar el registro")
        }
    },
    delete_ventadetallepromo: async(venta)=>{
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_ventadetallepromocion WHERE IdVentaDetallePromocion =?;",
          [
            venta.IdDetalle,
          ]
          );
            
        } catch (error) {
            console.log(error);
            throw new Error("Error al eliminar el registro")
        }
    },





};