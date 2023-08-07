import { connectDB } from "../config/Conn.js";

export const ModInventario = {

  getInventarios: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("select i.IdInventario, ma.descripcion, m.detalle, i.cantidad, p.idProducto as idProducto from tbl_inventario as i inner join tbl_producto as p on i.IdProducto=p.IdProducto inner join tbl_modelo as m on p.IdModelo=m.IdModelo inner join tbl_marca as ma on ma.IdMarca=m.idMarca;");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el inventario");
    }
  },
  postInsertInventario: async (inventario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_inventario (IdProducto, cantidad) VALUES (?,0);",
        [
        inventario.IdProducto,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al registrar inventario");
    }
  },
  putUpdateInventarioCompras: async (inventario) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_inventario set cantidad =(SELECT cantidad from tbl_inventario where `IdProducto`=?)+? WHERE `IdProducto`=?;",
        [
          inventario.idProducto,
          inventario.cantidad,
          inventario.idProducto
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