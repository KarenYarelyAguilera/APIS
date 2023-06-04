import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrCompra } from "../controllers/compra.js";
import { ContrGestion } from "../controllers/Gestion.js";
import { ContrVentas } from "../controllers/ventas.js";
import { ContrRol } from "../controllers/rol.js";

const router = express.Router();

//usuario
router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)

//correo
router.post('/mail/recover',Mailer.sendMail)


//Login
router.post('/login/compare',ContrLogin.getPsswrd)
router.get('/login/preguntas',ContrLogin.getPreguntas)
router.post('/login',ContrLogin.getUser) 

//Compra
router.get('/compra',ContrCompra.getCompras)
router.post('/compra/NuevaCompra',ContrCompra.postInsertCompra)
router.put('/compra/ActualizarCompra',ContrCompra.putUpdateCompra)
router.delete('/compra/EliminarCompra',ContrCompra.deleteCompra)

//Ventas
router.get('/Ventas',ContrVentas.getVentas)
router.post('/Ventas/NuevaVenta',ContrVentas.postInsertVentas)
router.put('/Ventas/ActualizarVenta',ContrVentas.putUpdateVenta)
router.delete('/Ventas/EliminarVenta',ContrVentas.deleteVenta)

//Gestion 
router.get('/Gestion',ContrGestion.getSucursal)
router.post('/Gestion/NuevaSucursal',ContrGestion.postInsertSucursal)
router.put('/Gestion/ActualizarSucursal',ContrGestion.putInsertSucursal)
router.delete('/Gestion/EliminarSucursal',ContrGestion.deleteSucursal)

//Rol
router.get('/Rol',ContrRol.getRol)
router.post('/Rol/NuevoRol',ContrRol.postRol)
router.put('/Rol/RolActualizado',ContrRol.putUpdateRol)
router.delete('/Rol/RolEliminado',ContrRol.deleteRol)


export default router