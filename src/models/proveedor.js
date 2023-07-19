import { connectDB } from "../config/Conn.js";

export const ModProveedor = {

getProveedores:async()=> {
    try {
        const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_proveedor")
      return filas;
    } catch (error) {
        console.long(error);
        throw new error("Error al consumir el API")
    }
},

postInsertProveedor:async(proveedor)=>{
    const conexion = await connectDB();
    try {
        const[filas]=await conexion.query("INSERT INTO tbl_proveedor(CiaProveedora,encargado,pais,ciudad,codigoPostal,direccion,telefono,correoElectronico)  VALUES(?,?,?,?,?,?,?,?);",
        [
            proveedor.CiaProveedora,
            proveedor.encargado,
            proveedor.pais,
            proveedor.ciudad,
            proveedor.codigoPostal,
            proveedor.direccion,
            proveedor.telefono,
            proveedor.correoElectronico,
        ]
        );
        return { estado:"OK"};
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear un nuevo proveedor");
    }
},

putUpdateProveedor:async(proveedor)=>{
    const conexion=await connectDB();
    try {
        const[filas]=await conexion.query("UPDATE tbl_proveedor  SET  nombreProveedor = ? ,encargado= ?,pais= ?,ciudad= ?,codigoPostal= ?,direccion= ?,telefono= ?,correoElectronico= ?  WHERE IdProveedor=?;",
        [
            proveedor.nombreProveedor,
            proveedor.encargado,
            proveedor.pais,
            proveedor.cuidad,
            proveedor.codigoPostal,
            proveedor.direccion,
            proveedor.telefono,
            proveedor.correoElectronico,
            proveedor.IdProveedor,
        ]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
      throw new Error("Error al actualizar el proveedor");
    }
},

deleteProveedor:async(proveedor)=>{
    try {
        const conexion = await connectDB()
  const [filas] = await conexion.query("DELETE FROM tbl_proveedor where IdProveedor=?;",
  [
        proveedor.IdProveedor,
  ]
  );
  return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
      throw new Error("Error al eliminar el proveedor");
    }
},


}