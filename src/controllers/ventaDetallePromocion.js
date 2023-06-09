import { ModVentaDetalleProm} from "../models/ventaDetallePromocion.js";

export const ContrVentaDetalleProm = {
    getVentDetalleProm: async (req, res) => {
        const venta = await ModVentaDetalleProm.getVentDetalleProm();
        res.json(venta);
    },
    InsertVentaDetallePromo: async (req, res) => {
        try {
            const { IdVenta, IdPromocion, cantidad, precioVenta } = req.body;
            const result = await ModVentaDetalleProm.post_ventadetallepromo({
                IdVenta,
                IdPromocion,
                cantidad,
                precioVenta,
                
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al crear registro" });
        }
    },
    UpdateVentaDetallePromo: async (req, res) => {
        try {
            const { IdVenta, IdPromocion, cantidad, precioVenta, IdDetalle} = req.body;
            const result = await ModVentaDetalleProm.put_ventadetallepromo({ 
                IdVenta,
                IdPromocion,
                cantidad,
                precioVenta,
                IdDetalle,
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    DeleteVentaDetallePromo:async(req, res)=>{
        try {
            const {IdDetalle} = req.body;
            const result = await ModVentaDetalleProm.delete_ventadetallepromo({IdDetalle});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },


};