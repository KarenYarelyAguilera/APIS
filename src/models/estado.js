import { connectDB } from "../config/Conn.js";

export const EstadoMod = {
    updActivo: async (Usuario)=>{
        try {
            const conexion = await connectDB()
            const [filas]= await conexion.query('UPDATE tbl_ms_usuario  SET `Estado_Usuario` = "Activo"  WHERE `Id_Usuario` =?',
            [Usuario.id])
            return {state:"ok"}
        } catch (error) {
            console.log(error);
        }
    },
    updInactivo: async (Usuario)=>{
        try {
            const conexion = await connectDB()
            const [filas]= await conexion.query('UPDATE tbl_ms_usuario  SET `Estado_Usuario` = "Inactivo"  WHERE `Id_Usuario` =?',
            [Usuario.id])
            return {state:"ok"}
        } catch (error) {
            console.log(error);
        }
    },
}