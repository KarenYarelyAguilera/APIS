import { compare } from "bcrypt";
import { connectDB } from "../config/Conn.js";

export const ModVentas = {

    getVentas: async ()=>{
        let conexion

        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("select v.IdVenta, v.fecha, v.IdCliente as Cliente, v.valorVenta as ValorVenta from tbl_venta as v;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    getVentaDetalle: async ()=>{
        let conexion

        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("select vd.IdVentaDetalle, v.IdVenta, v.fecha, concat_ws(' ', c.nombre, c.apellido) as Cliente, e.nombre as Empleado, m.detalle as Producto, l.lente as TipoDeLente, g.descripcion as Garantia, g.mesesGarantia as Meses, vd.precioAro , vd.precioLente, vd.cantidad, vd. subtotal, vd.rebaja, vd.totalVenta from tbl_ventadetalle as vd inner join tbl_venta as v  on vd.IdVenta=v.IdVenta inner join tbl_producto as p on p.IdProducto=vd.IdProducto inner join tbl_modelo as m on m.IdModelo=p.IdModelo inner join tbl_lente as l on l.IdLente=vd.IdLente inner join tbl_garantia as g on g.IdGarantia=vd.IdGarantia inner join tbl_empleado as e on e.IdEmpleado=v.idEmpleado inner join tbl_cliente as c on c.idCliente=v.IdCliente;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    postInsertVentas: async (venta) => {
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query("INSERT INTO tbl_venta(`fechaEntrega`, `fechaLimiteEntrega`, `IdCliente`, `idEmpleado`, `RTN`) VALUES (?, ?, ?, ?, ?);",
                [
                    venta.fechaEntrega,
                    venta.fechaLimiteEntrega,
                    venta.IdCliente,
                    venta.idEmpleado,
                    venta.RTN,
                ]
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear una nueva venta");
        }
    },

    putUpdateVenta : async (venta)=> {
        let conexion
         conexion = await connectDB();
        try {
            const [filas] = await conexion.query ("UPDATE tbl_venta SET  fecha=?, fechaLimiteEntrega=?, fechaEntrega=?, estado=?, observacion=?, idCliente=?, IdEmpleado=?, NumeroCAI=?, RTN=?, ISV=?, SubTotal=?, TotalAPagar=? where IdVenta =?;",
            [
             venta.fecha,
             venta.fechaLimiteEntrega,
             venta.fechaEntrega,
             venta.estado,
             venta. observacion,
             venta.IdCliente,
             venta.idEmpleado,
             venta.NumeroCAI,
             venta.rnt,
             venta.isv,
             venta.subtotal,
             venta.totalAPagar,
             venta.IdVenta,
            ]
            );
            conexion.end()
            return {estado:"OK"};
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al actualizar la venta");    
        }
    },

    deleteVenta : async (venta)=> {
        let conexion
       try {
        conexion = await connectDB()
        const [filas] = await conexion.query( "DELETE FROM tbl_venta where IdVenta = ?;",
        [
            venta.IdVenta,
        ]
        );
        conexion.end()
        return {estado:"OK"}; 
       } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al eliminar la venta");    
       }
    },

}