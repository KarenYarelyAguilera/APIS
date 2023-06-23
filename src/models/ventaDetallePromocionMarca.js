import { connectDB } from "../config/Conn.js";

export const ModVentaDetallePromMarca = {

    get_ventadetallepromocionmarca: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT * FROM tbl_ventadetallepromocionmarca");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener el registro");
        } 
    },
    post_ventadetallepromocionmarca: async (venta) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_ventadetallepromocionmarca (IdVenta,IdPromocionMarca) VALUES(?,?);",
            [
                venta.IdVenta,
                venta.IdPromocion,
    
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error al crear registro");
        }
    },
    put_ventadetallepromocionmarca: async (venta)=>{
        try {
          const conexion = await connectDB()
          const [filas] = await conexion.query("UPDATE tbl_ventadetallepromocionmarca  SET IdVenta=?,IdPromocionMarca=? WHERE IdVentaDetallePromocionMarca =?;",
          [
                venta.IdVenta,
                venta.IdPromocion,
                venta.IdDetalle,
          ]
          );
          return {estado:"ok"}
        } catch (error) {
          console.log(error);
          throw new Error("Error al actualizar el registro")
        }
    },
    delete_ventadetallepromocionmarca: async(venta)=>{
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_ventadetallepromocionmarca WHERE IdVentaDetallePromocionMarca =?;",
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
