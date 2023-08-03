import { connectDB } from "../config/Conn.js";

export const ModGenero = {

    getGenero: async () => {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT * FROM tbl_genero")
            return filas;
        } catch (error) {
            console.long(error);
            throw new error("Error al consumir el API")
        }
    },


}