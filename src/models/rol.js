import { connectDB } from "../config/Conn.js";

export const ModRol = {

  getRol: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Id_Rol,Rol,Descripcion from tbl_ms_roles")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los roles");
    }
  },
  getPermisosRol: async (rol) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT o.Id_Objeto, p.Permiso_Consultar,p.Permiso_Insercion,p.Permiso_Actualizacion,p.Permiso_Eliminacion from tbl_permisos as p inner join tbl_ms_roles as r   on p.`Id_Rol`=r.`Id_Rol`  inner join tbl_objetos as o on o.`Id_Objeto`= p.`Id_Objeto` where r.`Rol`=?",
        [
          rol.Rol
        ]
        
      )
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el rol");
    }
  },
  get_Permisosobjeto: async (rol) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT p.`Id_Objeto`,p.`Permiso_Consultar`,p.`Permiso_Insercion`,p.`Permiso_Actualizacion`,p.`Permiso_Eliminacion` FROM tbl_permisos as p INNER JOIN tbl_ms_roles as r ON r.`Id_Rol`=p.`Id_Rol`   where p.`Id_Objeto` = ? and r.`Rol`=?",
        rol.Id_Objeto,
        rol.Rol
      )
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el permiso del rol");
    }
  },
  get_PermisosConsulta: async (rol) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Permiso_Consultar from tbl_permisos WHERE `Id_Rol` = ?",
        rol.Id_Rol,
      )
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el permiso del rol");
    }
  },

  put_UpdPermisosConsultar: async (rol) => {
    const conexion = await connectDB();
        /**
         * 2=usuario
         * 3=inventario
         * 4=clientes
         * 5=recordatorios
         * 6=reportes
         * 7=seguridad
         * 8=configuracion
         * 9=ventas
         */
    try {
      const [filas] = await conexion.query("'UPDATE tbl_permisos set `Permiso_Consultar` = (CASE WHEN  `Id_Objeto`=2  THEN ? WHEN  `Id_Objeto`=3  THEN ? WHEN  `Id_Objeto`=4  THEN ? WHEN  `Id_Objeto`=5  THEN ? WHEN  `Id_Objeto`=6  THEN ? WHEN  `Id_Objeto`=7  THEN ? WHEN  `Id_Objeto`=8  THEN ? WHEN  `Id_Objeto`=9  THEN ? END) where`Id_Rol`=?'",
        [
          rol.usuario,
          rol.inventario,
          rol.clientes,
          rol.recordatorios,
          rol.reportes,
          rol.seguridad,
          rol.configuracion,
          rol.ventas,
          rol.Id_Rol,

        ]);
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el rol");
    }

  },

  put_UpdPermisosInsert: async (rol) => {
    const conexion = await connectDB();
        /**
         * 2=usuario
         * 3=inventario
         * 4=clientes
         * 5=recordatorios
         * 6=reportes
         * 7=seguridad
         * 8=configuracion
         * 9=ventas
         */
    try {
      const [filas] = await conexion.query(" 'UPDATE tbl_permisos set `Permiso_Insercion` = (CASE WHEN  `Id_Objeto`=2  THEN ? WHEN  `Id_Objeto`=3  THEN ? WHEN  `Id_Objeto`=4  THEN ? WHEN  `Id_Objeto`=5  THEN ? WHEN  `Id_Objeto`=6  THEN ? WHEN  `Id_Objeto`=7  THEN ? WHEN  `Id_Objeto`=8  THEN ? WHEN  `Id_Objeto`=9  THEN ? END) where`Id_Rol`=?'",
        [
          rol.usuario,
          rol.inventario,
          rol.clientes,
          rol.recordatorios,
          rol.reportes,
          rol.seguridad,
          rol.configuracion,
          rol.ventas,
          rol.Id_Rol,

        ]);
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el rol");
    }

  },

  put_UpdPermisoUpdt: async (rol) => {
    const conexion = await connectDB();
        /**
         * 2=usuario
         * 3=inventario
         * 4=clientes
         * 5=recordatorios
         * 6=reportes
         * 7=seguridad
         * 8=configuracion
         * 9=ventas
         */
    try {
      const [filas] = await conexion.query(" 'UPDATE tbl_permisos set `Permiso_Actualizacion` = (CASE WHEN  `Id_Objeto`=2  THEN ? WHEN  `Id_Objeto`=3  THEN ? WHEN  `Id_Objeto`=4  THEN ? WHEN  `Id_Objeto`=5  THEN ? WHEN  `Id_Objeto`=6  THEN ? WHEN  `Id_Objeto`=7  THEN ? WHEN  `Id_Objeto`=8  THEN ? WHEN  `Id_Objeto`=9  THEN ? END) where`Id_Rol`=?'",
        [
          rol.usuario,
          rol.inventario,
          rol.clientes,
          rol.recordatorios,
          rol.reportes,
          rol.seguridad,
          rol.configuracion,
          rol.ventas,
          rol.Id_Rol,

        ]);
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el rol");
    }

  },

  get_verPermisosRoles: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.Id_Rol,r.`Rol`, o.`Descripcion`,p.`Permiso_Insercion`,p.`Permiso_Actualizacion`, p.`Permiso_Consultar`,p.`Permiso_Eliminacion`  FROM tbl_permisos as p INNER JOIN tbl_ms_roles as r   ON p.`Id_Rol` = r.`Id_Rol`  inner join tbl_objetos as o on o.`Id_Objeto`=p.`Id_Objeto`")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los roles");
    }
  },

  put_UpdPermisosDel: async (rol) => {
    const conexion = await connectDB();
        /**
         * 2=usuario
         * 3=inventario
         * 4=clientes
         * 5=recordatorios
         * 6=reportes
         * 7=seguridad
         * 8=configuracion
         * 9=ventas
         */
    try {
      const [filas] = await conexion.query("'UPDATE tbl_permisos set `Permiso_Eliminacion` = (CASE WHEN  `Id_Objeto`=2  THEN ? WHEN  `Id_Objeto`=3  THEN ? WHEN  `Id_Objeto`=4  THEN ? WHEN  `Id_Objeto`=5  THEN ? WHEN  `Id_Objeto`=6  THEN ? WHEN  `Id_Objeto`=7  THEN ? WHEN  `Id_Objeto`=8  THEN ? WHEN  `Id_Objeto`=9  THEN ? END) where`Id_Rol`=?'",
        [
          rol.usuario,
          rol.inventario,
          rol.clientes,
          rol.recordatorios,
          rol.reportes,
          rol.seguridad,
          rol.configuracion,
          rol.ventas,
          rol.Id_Rol,

        ]);
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el rol");
    }

  },


  deleteRol: async (rol) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_ms_roles where Id_Rol = ?;",
        [
          rol.Id_Rol,
        ]
      );
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el rol");
    }
  },
  get_Objetos: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * from tbl_objetos")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los roles");
    }
  },
  get_Objeto: async (rol) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * from tbl_objetos where Id_Objeto=?",
        rol.Id_Objeto,
      )
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los roles");
    }
  },
  get_verPermisosRoles: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.Id_Rol,r.`Rol`, o.`Descripcion`,p.`Permiso_Insercion`,p.`Permiso_Actualizacion`, p.`Permiso_Consultar`,p.`Permiso_Eliminacion`  FROM tbl_permisos as p INNER JOIN tbl_ms_roles as r   ON p.`Id_Rol` = r.`Id_Rol`  inner join tbl_objetos as o on o.`Id_Objeto`=p.`Id_Objeto`")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los roles");
    }
  },

}