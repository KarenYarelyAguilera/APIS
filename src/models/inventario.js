import { connectDB } from "../config/Conn.js";

export const ModInventario = {

  getInventarios: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT i.IdInventario, p.IdProducto, ma.descripcion as Marca, mo.detalle as Modelo, i.cantidad FROM tbl_inventario as i inner join tbl_producto as p on i.IdProducto=p.IdProducto inner join tbl_marca as ma on p.IdMarca=ma.IdMarca inner join tbl_modelo as mo on mo.IdModelo=p.IdModelo;");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el inventario");
    }
  },
  postInsertInventario: async (inventario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_inventario (IdProducto, cantidad) VALUES (?,?);",
        [
        inventario.IdProducto,
        inventario.cantidad,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al registrar inventario");
    }
  },
  putUpdateInventario: async (inventario) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_inventario set cantidad=? where IdInventario = ?;",
        [
          inventario.cantidad,
          inventario.idInventario
        ]
      )
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el producto dentro de Inventario")
    }
  },
  delInventario: async (inventario) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_Inventario WHERE IdInventario = ?;", [
        inventario.IdInventario
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar producto del inventario");
    }
  },
  
};
