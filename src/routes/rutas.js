import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";

const router = express.Router();

router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuarios',ContrUsuario.postUsuario)

export default router