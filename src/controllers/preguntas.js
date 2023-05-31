import { ModPreguntas } from "../models/preguntas.js";

export const ContrPreguntas = {
    getPreguntas: async (req, res) => {
        const preg = await ModPreguntas.getPreguntas();
        res.json(preg);
    },
    postPreguntas: async (req, res) => {
        try {
            const { pregunta, creadoPor, FechaCrea} = req.body;
            const result = await ModPreguntas.postInsertPreguntas({
                pregunta,
                creadoPor,
                FechaCrea,
                
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al ingresar las preguntas" });
        }
    },
    getRespuestas: async (req, res) => {
        const preg = await ModPreguntas.getRespuestas();
        res.json(preg);
    },
    postRespuestas: async (req, res) => {
        try {
            const { idUser, respuesta, creadoPor, fechaCrea} = req.body;
            const result = await ModPreguntas.postInsertRespuestas({
                idUser,
                respuesta,
                creadoPor,
                fechaCrea
                
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al ingresar las preguntas" });
        }
    },
    




};



