import { ModVentaDetalle} from "../models/VentaDetalle.js";

export const ContrVentaDetalle = {
    GetVentaDetalle: async (req, res) => {
        try {
            const venta = await ModVentaDetalle.getVentaDetalle();
            res.status(200).json(venta);
        } catch (error) {
            console.log(error);
            res.status(500).json("Error al consumir la API");
        }
    },
    PostVentaDetalle: async (req, res) => {
        try {
            const { IdVenta, IdGarantia ,IdProducto,cantidad,precioExamen} = req.body;
            const result = await ModVentaDetalle.post_VentaDetalle({
                IdVenta, 
                IdGarantia,
                IdProducto,
                cantidad,
                precioExamen,
            });
            res.status(200).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al consumir la API" });
        }
    },
    PutVentaDetalle: async (req, res) => {
        try {
            const { IdVenta, IdGarantia, IdProducto, cantidad, precioExamen, IdVentaDetalle} = req.body;
            const result = await ModVentaDetalle.put_VentaDetalle({ 
                IdVenta, 
                IdGarantia,
                IdProducto,
                cantidad,
                precioExamen,
                IdVentaDetalle,
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    DeleteVentaDetalle:async(req, res)=>{
        try {
            const {IdVentaDetalle} = req.body;
            const result = await ModVentaDetalle.delete_VentaDetalle({IdVentaDetalle});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },

};