import { connectDB } from "../config/Conn.js";

export const ModSucursal = {

    getSucursales: async () => {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("select s.IdSucursal, s.departamento, s.ciudad, s.direccion, s.telefono from tbl_sucursal as s;")
            return filas;
        } catch (error) {
            console.long(error);
            throw new error("Error al consumir el API")
        }
    },

    postInsertSucursal: async (sucursal) => {
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query("INSERT INTO tbl_sucursal (departamento, ciudad, direccion, telefono) VALUES (?, ?, ?, ?);",
                [
                    sucursal.departamento,
                    sucursal.ciudad,
                    sucursal.direccion,
                    sucursal.telefono,
                ]
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear un nueva sucursalr");
        }
    },

    putUpdateSucursal: async (sucursal) => {
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query("UPDATE tbl_sucursal SET departamento = ?, ciudad = ?, direccion = ?, telefono = ? WHERE (IdSucursal = ?);",
                [
                    sucursal.departamento,
                    sucursal.ciudad,
                    sucursal.direccion,
                    sucursal.telefono,
                    sucursal.IdSucursal,
                ]
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            throw new Error("Error al actualizar la sucursal");
        }
    },

    deleteSucursal: async (sucursal) => {
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_sucursal where IdSucursal=?;",
                [
                    sucursal.IdSucursal,
                ]
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            throw new Error("Error al eliminar la sucursal");
        }
    },


}