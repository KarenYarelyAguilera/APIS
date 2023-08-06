import { connectDB } from "../config/Conn.js";

export const ModGenero = {

    getGenero: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT * FROM tbl_genero")
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },


}