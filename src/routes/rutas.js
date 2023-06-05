import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrEmpleado } from "../controllers/empleado.js";
import { ContrPreguntas } from "../controllers/preguntas.js";
import { ContrVentaDetalleProm } from "../controllers/ventaDetallePromocion.js";
import { ContrVentaDetallePromMarca } from "../controllers/ventaDetallePromocionMarca.js";

import { ContrCompra } from "../controllers/compra.js";
import { ContrGestion } from "../controllers/Gestion.js";
import { ContrVentas } from "../controllers/ventas.js";
import { ContrRol } from "../controllers/rol.js";
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

//test
router.post('/test/encipt',ContrLogin.test)

//Clientes
router.get('/clientes',ContrClientes.getClientes)
router.post('/clientes/clienteNuevo',ContrClientes.postCliente)
router.put('/clientes/actualizar',ContrClientes.putCliente)
router.delete('/clientes/eliminar',ContrClientes.delCliente)


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

//ventaDetallePromocion
router.get('/ventaDetallePromocion',ContrVentaDetalleProm.getVentDetalleProm)
router.post('/ventaDetallePromocion',ContrVentaDetalleProm.InsertVentaDetallePromo)
router.put('/ventaDetallePromocion',ContrVentaDetalleProm.UpdateVentaDetallePromo)
router.delete('/ventaDetallePromocion',ContrVentaDetalleProm.DeleteVentaDetallePromo)


//ventaDetallePromocionMarca
router.get('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.getdetallemarca)
router.post('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.InsertVentaDetalleMarca)
router.put('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.UpdateVentaDetalleMarca)
router.delete('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.DeleteVentaDetalleMarca)


export default router