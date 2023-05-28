import { connectDB } from "../config/Conn.js";

export const ModUsuarios = {
  
  getUsuarios: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ms_usuario");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener usuarios");
    } 
  },

  postInsertUsuario: async (usuario) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into TBL_MS_USUARIO (Usuario, Nombre_Usuario, Contrasenia,Id_Rol, Correo_Electronico, idEmpleado, fecha_creacion,fecha_modificacion)values (?, ?, ?, ?, ?, ?, current_timestamp(), current_timestamp());",
        [
          usuario.usuario,
          usuario.nombre,
          usuario.clave,
          usuario.rol,
          usuario.correo,
          usuario.id,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear usuarios");
    }
  },
  putUpdateUsuario: async (usuario)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_ms_usuario set Usuario = ?, Nombre_Usuario = ?, Estado_Usuario = ?, Contrasenia = ?, Id_Rol = ?, Correo_Electronico = ?, idEmpleado = ? WHERE Id_usuario=?;",
        [
          usuario.usuario,
          usuario.nombreUsuario,
          usuario.estadoUsuario,
          usuario.clave,
          usuario.idRol,
          usuario.correo,
          usuario.idEmpleado,
          usuario.idUsuario,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar el usuario")
      }
  },

  putUpdateUsuario: async(usuario)=>{
    try {
      const conexion =await connectDB()
      const [filas]=await conexion.query("UPDATE tbl_ms_usuario set Usuario = ?, Nombre_Usuario = ?, Estado_Usuario = ?, Contrasenia = ?, Id_Rol = ?, Correo_Electronico = ?, idEmpleado = ? WHERE Id_usuario=?;", 
      [
        usuario.usuario,
        usuario.nombreUsuario,
        usuario.estadoUsuario,
        usuario.clave,
        usuario.idRol,
        usuario.correo,
        usuario.idEmpleado,
        usuario.idUsuario
      ])
      return{estado:"ok"}
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el usuario");
    }
  },
};
