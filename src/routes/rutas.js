import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrGarantia } from "../controllers/garantia.js";
import { ContrMarca } from "../controllers/marca.js";
import { ContrModelo } from "../controllers/modelo.js";
import { ContrInventario } from "../controllers/inventario.js";
import { ContrPago } from "../controllers/pago.js";
import { ContrProducto } from "../controllers/producto.js";
import { ContrProductoProm } from "../controllers/productopromocion.js";
import { ContrPromocion } from "../controllers/promocion.js";
import { ContrPromocionMarca } from "../controllers/promocionmarca.js";
import { ContrTipoPago } from "../controllers/tipopago.js";
import { ContrParametro } from "../controllers/parametros.js";

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

//Garantias
router.get('/garantias', ContrGarantia.getGarantias)
router.post('/garantias/crear', ContrGarantia.postGarantia)
router.put('/garantias/actualizar', ContrGarantia.putGarantia)
router.delete('/garantias/eliminar', ContrGarantia.delGarantia)

//Inventario
router.get('/inventarios', ContrInventario.getInventarios)
router.post('/inventarios/crear', ContrInventario.postInventario)
router.put('/inventario/actualizar', ContrInventario.putInventario)
router.delete('/inventario/eliminar', ContrInventario.delInventario)

//Marca
router.get('/marcas', ContrMarca.getMarcas)
router.post('/marcas/crear', ContrMarca.postMarca)
router.put('/marcas/actualizar', ContrMarca.putMarca)
router.delete('/marcas/eliminar', ContrMarca.delMarca)

//Modelo
router.get('/modelos', ContrModelo.getModelos)
router.post('/modelos/crear', ContrModelo.postModelo)
router.put('/modelo/actualizar', ContrModelo.putModelo)
router.delete('/modelo/eliminar', ContrModelo.delModelo)

//Pago
router.get('/pagos', ContrPago.getPagos)
router.post('/pagos/crear', ContrPago.postPago)
router.put('/pagos/actualizar', ContrPago.putPago)
router.delete('/pagos/eliminar', ContrPago.delPago)

//Parametros
router.get('/parametros', ContrParametro.getParametros)
router.get('/parametros', ContrParametro.getIntentos)
router.get('/parametros', ContrParametro.getPreguntas)
router.get('/parametros', ContrParametro.getImpuesto)
router.get('/parametros', ContrParametro.getTiempoDReuintentoLogin)
router.put('/parametros/actualizar', ContrParametro.putParametro)
router.put('/parametros/actualizar', ContrParametro.putIntentos)
router.put('/parametros/actualizar', ContrParametro.putPreguntas)
router.put('/parametros/actualizar', ContrParametro.putImpuesto)
router.put('/parametros/actualizar', ContrParametro.putTiempoDReuintentoLogin)

//Producto
router.get('/producto', ContrProducto.getProducto)
router.get('/productos', ContrProducto.getProductos)
router.post('/productos/crear', ContrProducto.postProducto)
router.put('/productos/actualizar', ContrProducto.putProducto)
router.delete('/producto/eliminar', ContrProducto.delProducto)

//ProductoPromocion
router.get('/productopromociones', ContrProductoProm.getProductosProm)
router.post('/productopromociones/crear', ContrProductoProm.postProductoProm)
router.put('/productopromociones/actualizar', ContrProductoProm.putProductoProm)
router.delete('/productopromociones/eliminar', ContrProductoProm.delProductoProm)

//Promocion
router.get('/promociones', ContrPromocion.getPromocion)
router.post('/promociones/crear', ContrPromocion.postPromocion)
router.put('/promociones/actualizar', ContrPromocion.putPromocion)
router.delete('/promociones/eliminar', ContrPromocion.delPromocion)

//PromocionMarca
router.get('/promocionmarca', ContrPromocionMarca.getPromoMarca)
router.post('/promocionmarca/crear', ContrPromocionMarca.postPromoMarca)
router.put('/promocionmarca/actualizar', ContrPromocionMarca.putPromoMarca)
router.delete('/promocionmarca/eliminar', ContrPromocionMarca.delPromoMarca)

//TipoPago
router.get('/tipopago', ContrTipoPago.getTipoPagos)
router.post('/tipopago/crear', ContrTipoPago.postTipoPago)
router.put('/tipopago/actualizar', ContrTipoPago.putTipoPago)
router.delete('/tipopago/eliminar', ContrTipoPago.delTipoPago)



export default router