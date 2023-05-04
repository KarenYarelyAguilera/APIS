import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { Mailer } from "../controllers/correos.js";

const router = express.Router();

router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)
router.post('/mail/recover',Mailer.sendMail)

export default router