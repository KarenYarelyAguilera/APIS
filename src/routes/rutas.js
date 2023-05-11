import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";

const router = express.Router();

//usuario
router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)

//correo
router.post('/mail/recover',Mailer.sendMail)


//Login
router.post('/login',ContrLogin.getUser)
router.get(' /login/compare',ContrLogin.getPsswrd)

export default router