import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrEmpleado } from "../controllers/empleado.js";
import { ContrPreguntas } from "../controllers/preguntas.js";

const router = express.Router();

//usuario
router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)
router.put('/usuario/update',ContrUsuario.putUsuario)


//correo
router.post('/mail/recover',Mailer.sendMail)


//Login
router.post('/login/compare',ContrLogin.getPsswrd)
router.get('/login/preguntas',ContrLogin.getPreguntas)
router.post('/login',ContrLogin.getUser) 



//empleado
router.get('/empleado',ContrEmpleado.getEmpleados)
router.get('/empleado/get',ContrEmpleado.getEmpleado)
router.post('/empleado',ContrEmpleado.postEmpleado)
router.put('/empleado',ContrEmpleado.putEmpleado)
router.delete('/empleado',ContrEmpleado.delEmpleado)
router.get('/empleado/sucursal',ContrEmpleado.getSucursales)
router.get('/empleado/genero',ContrEmpleado.getGeneros)


//preguntas
router.get('/preguntas',ContrPreguntas.getPreguntas)
router.post('/preguntas',ContrPreguntas.postPreguntas)
router.get('/preguntas/respuestas',ContrPreguntas.getRespuestas)
router.post('/preguntas/respuestas',ContrPreguntas.postRespuestas)


export default router