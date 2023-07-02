import { connectDB } from "../config/Conn.js";

export const ModBitacora = {


//-----------LOGIN---------------

    postInsertLogin: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Login","Inicio de sesión ")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

   //---------RECUPERACION DE CONTRASEÑA-----------------
    postInsertContra: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Login"," Recuperacion de contraseña")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //-----------PREGUNTAS DE SEGURIDAD-----------
    //----Preguntas ---------

    postPrgunta: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso a la pantalla de Preguntas de Seguridad")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //------------Respuestas-----------
    postRespuesta: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso ingreso una respuesta a la pregunta seguridad")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },
    //---------------------MODULO EMPLEADO------------------

    //------Ingreso al modulo de empleados----------
    postInsertModEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Modulo de empleado","El usuario ingreso al modulo de empleado")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },
    //---------Registro de Empleado-------------
    postInsertRegistroEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Registro de empleado","Se hizo un nuevo registro de empleados")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //-----------Ver lista de los empleados--------
    postVerListaEmpleados: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Lista de empleado","El usuario ingreso a la pantalla de lista de empleados registrados en el sistema")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Actualizar empleado","El usuario realizo actualizaciones a los datos de empleados")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

//-----------Eliminar empleado--------
postEliminarEmpleado: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Eliminar empleado","El usuario elimino registros de empleados")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

//--------------USUARIOS-----------------------------
//--------Regsitro de Usuario---------------

postInsertUsuario:async(idusuario)=>{
  const conexion = await connectDB();
  try {
    const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,7,"Usuario nuevo","Se agrego un nuevo usuario")',
    [idusuario.Id]
    );
    return{estado:"OK"}; 
  } catch (error) {
    console.log(error);
    throw new Error("Error en consumir el API")
  }
},

//-------------Lista de Usuario-------------
postListaUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Lista de usuario","El usuario ingreso a la Lista de Usuarios")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},

//---------Actaulizar Usuario-----------------
postActualizarUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizar Usuario","Se realizo actualizaciones en Usuario")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},

//------------Eliminar Usuario---------------------
postEliminarUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar Usuario","Se elimino un usuario")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},


//----------MODULO DE VENTAS-------------------
//----------Ingreso a Venta------------
postModuloVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,7,"Modulo de ventas","El usuario ingreso al modulo de ventas")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-----------------Registro de Venta-------------------
postInsertVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Nueva Venta","El usuario realizo una nueva venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-----------------Vista de la lista de ventas-------------------
postListaVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ver lista de venta","El usuario ingreso a la pantalla de Lista de Venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------------Actualizacion de Venta---------------
postActualizacionVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,10,"Actualizacion venta","El usuario realizo una actualizacion en venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//----------------Eliminar Venta---------------------
postEliminarVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Eliminar venta","El usuario elimino un registo de una venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------Ingreso a la pantalla de Garantia---------------
postPantallaGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,12,"Pantalla de Garantia","El usuario ingreso a Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//----------Registro de Garantia-------------
postInsertGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,13,"Registro de Garantia","El usuario registro una nueva garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//--------------------Lista de Garantia-----------------
postVerListaGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,14,"Lista de Garantia","El usuario ingreso a la pantalla de Ver Lista de Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------------------Actualizar datos de Garantia-----------------
postActualizarGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,15,"Actualizacion Garantia","El usuario realizo una actualizacion en Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Garantia-----------------
postEliminarGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,16,"Eliminar Garantia","El usuario elimino datos en garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},





}