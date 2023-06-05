import { ModVentaDetallePromMarca} from "../models/ventaDetallePromocionMarca.js";

export const ContrVentaDetallePromMarca = {

    getdetallemarca: async (req, res) => {
        const venta = await ModVentaDetallePromMarca.get_ventadetallepromocionmarca();
        res.json(venta);
    },
    InsertVentaDetalleMarca: async (req, res) => {
        try {
            const { IdVenta, IdPromocion,} = req.body;
            const result = await ModVentaDetallePromMarca.post_ventadetallepromocionmarca({
                IdVenta,
                IdPromocion,
                
                
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al crear registro" });
        }
    },
    UpdateVentaDetalleMarca: async (req, res) => {
        try {
            const { IdVenta, IdPromocion, IdDetalle} = req.body;
            const result = await ModVentaDetallePromMarca.put_ventadetallepromocionmarca({ 
                IdVenta,
                IdPromocion,
                IdDetalle,
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    DeleteVentaDetalleMarca:async(req, res)=>{
        try {
            const {IdDetalle} = req.body;
            const result = await ModVentaDetallePromMarca.delete_ventadetallepromocionmarca({IdDetalle});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },



};