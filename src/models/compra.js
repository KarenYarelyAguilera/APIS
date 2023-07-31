import { connectDB } from "../config/Conn.js";
import { ModKardex } from "./Kardex.js";
import { ModInventario } from "./inventario.js";

export const ModCompras = {
  getCompras: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT * FROM tbl_compra as cmp INNER JOIN  tbl_proveedor as pvd ON cmp.IdProveedor=pvd.IdProveedor"
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener compras");
    }
  },

  postCompras: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO tbl_compra (totalCompra) VALUES (null)"
      );
      return filas.insertId;
    } catch (error) {
      throw new Error("Error al insertar compra");
    }
  },

  postCompraDetalle: async (detalles,compraId) => {
    try {
      const conexion = await connectDB();
  
      const promises = detalles.map(async (detalle) => {
        await ModInventario.putUpdateInventarioCompras(detalle)
        await ModKardex.postKardexCompra(detalle)
        await conexion.query(
          "INSERT INTO tbl_compraDetalle (IdCompra, idProveedor, cantidad, idProducto, costoCompra) VALUES (?,?, ?, ?, ?)",
          [compraId, detalle.idProveedor, detalle.cantidad, detalle.idProducto, detalle.costo]
        );
      });
      await Promise.all(promises);
  
      const [sumResult] = await conexion.query(
        "SELECT SUM(costoCompra) AS totalCosto FROM tbl_compraDetalle WHERE IdCompra = ?",
        [compraId]
      );
  
      const totalCosto = sumResult[0].totalCosto || 0; //
      await conexion.query(
        "UPDATE tbl_compra SET totalCompra = ? WHERE IdCompra = ?",
        [totalCosto, compraId]
      );
    } catch (error) {
      throw new Error("Error al insertar el detalle de compra");
    }
  },
};
