import { ModVentaDetalleDescuento} from "../models/VentaDetalleDescuento.js";

export const ContrVentaDetalleDescuento = {
    GetVentaDetalleDescuento: async (req, res) => {
        try {
            const venta = await ModVentaDetalleDescuento.getVentaDetalleDescuento();
            res.status(200).json(venta);
        } catch (error) {
            console.log(error);
            res.status(500).json("Error al consumir la API");
        }
    },
    PostVentaDetalleDescuento: async (req, res) => {
        try {
            const { IdVenta, IdDescuento,porcDescuento,totalDescuento} = req.body;
            const result = await ModVentaDetalleDescuento.post_VentaDetalleDescuento({
                IdVenta,
                IdDescuento,
                porcDescuento,
                totalDescuento,
            });
            res.status(200).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al consumir la API" });
        }
    },
    PutVentaDetalleDescuento: async (req, res) => {
        try {
            const { IdVenta, IdDescuento,porcDescuento,totalDescuento, IdVentaDetalleDescuento} = req.body;
            const result = await ModVentaDetalleDescuento.put_VentaDetalleDescuento({ 
                IdVenta,
                IdDescuento,
                porcDescuento,
                totalDescuento,
                IdVentaDetalleDescuento,
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    DeleteVentaDetalleDescuento:async(req, res)=>{
        try {
            const {IdVentaDetalleDescuento} = req.body;
            const result = await ModVentaDetalleDescuento.delete_VentaDetalleDescuento({IdVentaDetalleDescuento});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },

};