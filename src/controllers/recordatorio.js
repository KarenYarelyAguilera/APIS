import { ModRecordatorio } from "../models/recordatorio.js";

export const ContrRecordatorio = {
    getCitas: async (req, res) => {
        try {
            const { fecha} = req.body;
            const result = await ModRecordatorio.getCitas({
                fecha
            });
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al obtener la lista de citas" });
        }
    },
    getCita: async (req, res) => {
        const result = await ModRecordatorio.getCita();
        res.json(result);
      
    },
    

    postCitas: async (req, res) => {
        try {
            const { IdRecordatorio, IdCliente, Nota, fecha } = req.body;
            const result = await ModRecordatorio.postInsertCita({
                IdRecordatorio,
                IdCliente,
                Nota,
                fecha,
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al agendar la cita" });
        }
    },
}