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
            const { idUser, Id_Pregunta, respuesta, creadoPor, fechaCrea} = req.body;
            const result = await ModPreguntas.postInsertRespuestas({
                idUser:idUser,
                idPregunta:Id_Pregunta,
                respuesta:respuesta,
                creadoPor:creadoPor,
                fechaCrea:fechaCrea
                
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al ingresar las preguntas" });
        }
    },

    compararRespuesta:async(req,res)=>{
        try {
            const {Id_Pregunta, Id_Usuario, Respuesta}=req.body
            const result= await ModPreguntas.compararRespuesta({Id_Pregunta, Id_Usuario, Respuesta})
            res.status(200).json(result)
        } catch (error) {
            
        }
    },

    getUser: async (req, res) => {
        try {
          const { correo } = req.body;
          const result = await ModPreguntas.userExist({ correo });
          res.status(200).json(result);
        } catch (error) {
          console.log(error);
          res.status(500).json({ message: "Usuario no existe" });
        }
      },
      getPyR: async (req, res) => {
        try {
            const { Id_Usuario} = req.body;
            const result = await ModPreguntas.getPyR({
                Id_Usuario
            });
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al obtener la lista" });
        }
    },
    




};



