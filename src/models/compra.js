import { compare } from "bcrypt";
import { connectDB } from "../config/Conn.js";

export const ModCompras = {

  getCompras : async ()=>  {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_compra as cmp INNER JOIN  tbl_proveedor as pvd ON cmp.IdProveedor=pvd.IdProveedor")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener compras");
    }
  },

  postInsertCompra: async (compra)=>{
    const conexion = await connectDB();
    try {
      const [filas] = await conexion.query ("INSERT INTO tbl_compra (idProveedor,fechaCompra,totalCompra) VALUES(?,?,?);",
      [
      compra.idProveedor,
      compra.fechaCompra,
      compra.totalCompra,
      ]
      );
      return {estado:"OK"}; 
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear una nueva compra");
      
    }
  },

  putUpdateCompra: async (compra)=>{
    const conexion = await connectDB();
  try {
    const[filas]=await conexion.query ("UPDATE tbl_compra SET  IdProveedor=?, fechaCompra=?, totalCompra=? where IdCompra =?;",
    [
      compra.IdProveedor,
      compra.fechaCompra,
      compra.totalCompra,
      compra.IdCompra,
    ]
    );
   return {estado:"OK"}; 
  } catch (error) {
    console.log(error);
      throw new Error("Error al actualizar la compra");
  }
  },

  deleteCompra : async (compra) =>{
try {
  const conexion = await connectDB()
  const [filas] = await conexion.query("DELETE FROM tbl_compra where IdCompra = ?;",
  [
    compra.IdCompra,
  ]);
 return {estado:"OK"}; 

} catch (error) {
  console.log(error);
      throw new Error("Error al eliminar la compra");
}
},

}