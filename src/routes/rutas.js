import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrClientes } from "../controllers/clientes.js";

const router = express.Router();

//usuario
router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)
router.put('/usuario/update',ContrUsuario.putUsuario)
router.delete('/usuario/delete',ContrUsuario.delUsuario)
router.get('/usuario/fechaExp',ContrUsuario.getFechaExp)
router.put('/usuario/estado',ContrUsuario.putUpdateEstado)
router.put('/usuario/UpdContra',ContrUsuario.putUpdatePassword)
router.post('/usuario/histPasswrd',ContrUsuario.postHistPassword)


//correo
router.post('/mail/recover',Mailer.sendMail)


//Login
router.post('/login/compare',ContrLogin.getPsswrd)
router.get('/login/preguntas',ContrLogin.getPreguntas)
router.post('/login',ContrLogin.getUser) 
router.put('/login/PVez',ContrLogin.putLoginPVez)

//Clientes
router.get('/clientes',ContrClientes.getClientes)
router.post('/clientes/clienteNuevo',ContrClientes.postCliente)


export default router