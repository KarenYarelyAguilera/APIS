import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrCompraDetalle } from "../controllers/ComprasDetalle.js";
import { ContrVentaDetalle } from "../controllers/VentasDetalles.js";
import { ContrKardex } from "../controllers/kardex.js";
import { ContrVentaDetalleDescuento } from "../controllers/VentasDetalleDescuentos.js";


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

//DetalleCompra
 router.get('/ComprasDetalle',ContrCompraDetalle.GetCompraDetalle)
 router.post('/ComprasDetalle',ContrCompraDetalle.PostCompraDetalle)
 router.put('/ComprasDetalle',ContrCompraDetalle.PutCompraDetalle)
 router.delete('/ComprasDetalle',ContrCompraDetalle.DeleteCompraDetalle)

//DetalleVenta
router.get('/VentasDetalles',ContrVentaDetalle.GetVentaDetalle)
router.post('/VentasDetalles',ContrVentaDetalle.PostVentaDetalle)
router.put('/VentasDetalles',ContrVentaDetalle.PutVentaDetalle)
router.delete('/VentasDetalles',ContrVentaDetalle.DeleteVentaDetalle)

//Kardex
router.get('/kardex',ContrKardex.GetKardex)
router.post('/kardex',ContrKardex.PostKardex)

//VentaDetalleDescuento
router.get('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.GetVentaDetalleDescuento)
router.post('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.PostVentaDetalleDescuento)
router.put('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.PutVentaDetalleDescuento)
router.delete('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.DeleteVentaDetalleDescuento)


export default router