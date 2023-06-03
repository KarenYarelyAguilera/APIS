import { connectDB } from "../config/Conn.js";

export const ModClientes = {
    getClientes: async ()=>{
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT c.idCliente, c.nombre,c.apellido, g.descripcion as genero, c.fechaNacimiento, c.direccion, c.telefonoCliente as Telefono, c.correoElectronico as Email from tbl_cliente as c inner join tbl_genero as g on c.IdGenero=g.IdGenero;")
            return filas
        } catch (error) {
            console.log(error);
        }
    },
    postCliente: async (Cliente)=>{
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("INSERT INTO tbl_cliente (idCliente,nombre,apellido,IdGenero,fechaNacimiento,direccion,telefonoCliente,correoElectronico) VALUES(?,?,?,?,?,?,?,?);",
            [Cliente.idCliente,Cliente.nombre,Cliente.apellido,Cliente.idGenero,Cliente.fechaNacimiento,Cliente.direccion,Cliente.telefono,Cliente.correo])
            return {estado:"ok"}
        } catch (error) {
            console.log(error);
        }
    }
}