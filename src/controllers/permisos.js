import { ModPermisos } from "../models/permisos.js";

export const ContrPermisos= {

    getPermisos:async(req,res)=>{
        const permisos =await ModPermisos.getPermisos()
        res.json(permisos)
    },
    getPermisosXRol:async(req,res)=>{
        const {idRol} = req.body
        const permisos =await ModPermisos.getPermisosXRol({idRol})
        res.json(permisos)
    },
    putPermisosXRolOBJ1:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ1({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ2:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ2({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ3:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ3({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ4:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ4({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ5:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ5({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ6:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ6({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ7:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ7({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ8:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ8({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ9:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.getPermisosXRolOBJ9({idRol,insert,del,select,upd})
        res.json(permisos)
    },

}
