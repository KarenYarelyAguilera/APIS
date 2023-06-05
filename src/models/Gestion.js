import { connectDB } from "../config/Conn.js";

export const ModGestion ={ 

getSucursal : async ()=> {
    try {
        const conexion = await connectDB();
        const [filas]= await conexion.query("SELECT * FROM tbl_sucursal")
        return filas;

    } catch (error) {
        console.log(error);
        throw new Error("Error al obtener sucursales");    
    }
},

postInsertSucursal: async (sucursal)=> {
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query ("INSERT INTO  tbl_sucursal (departamento,ciudad,direccion,telefono) VALUES(?,?,?,?);",
        [
            sucursal.departamento,
            sucursal.ciudad,
            sucursal.direccion,
            sucursal.telefono,
        ]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear una nueva sucursal");
    }
},

putInsertSucursal : async (sucursal)=>{
    const conexion = await connectDB();
    try {
        const[filas]=await conexion.query ("UPDATE tbl_sucursal SET departamento=?, ciudad=?, direccion=?, telefono=? where IdSucursal =?;",
        [
            sucursal.departamento,
            sucursal.ciudad,
            sucursal.direccion,
            sucursal.telefono,
            sucursal.IdSucursal,
        ]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
      throw new Error("Error al actualizar la sucursal");
        
    }
},


deleteSucursal: async (sucursal)=> {
try {
    const conexion = await connectDB()
  const [filas] = await conexion.query ("DELETE FROM tbl_sucursal where IdSucursal = ?;",
  [
    sucursal.IdSucursal,
  ]
  );
  return {estado:"OK"}; 

} catch (error) {
    console.log(error);
      throw new Error("Error al eliminar la suscursal");
    
}
},

}