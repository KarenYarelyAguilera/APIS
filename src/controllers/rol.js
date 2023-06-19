import { ModRol } from "../models/rol.js";

export const ContrRol = {

    getRol: async (req, res) => {
        try {
            const rol = await ModRol.getRol()
            res.json(rol)
        } catch (error) {
            console.log(error);
        }

    },
    getPermisosRoles: async (req, res) => {
        try {
            const { Rol } = req.body;
            const rol = await ModRol.getPermisosRol(Rol)
            res.json(rol)
        } catch (error) {
            console.log(error);
        }
       
    },
    getPermisoObjeto: async (req, res) => {
        const { Id_Objeto, Rol } = req.body;
        const rol = await ModRol.get_Permisosobjeto(Id_Objeto, Rol)
        res.json(rol)
    },
    getPermisoConsulta: async (req, res) => {
        const { Id_Rol } = req.body;
        const rol = await ModRol.get_PermisosConsulta(Id_Rol)
        res.json(rol)
    },

    putUpdatePermisosConsulta: async (req, res) => {
        try {
            const { usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol } = req.body;
            const result = await ModRol.put_UpdPermisosConsultar({ usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    putUpdatePermisosInsert: async (req, res) => {
        try {
            const { usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol } = req.body;
            const result = await ModRol.put_UpdPermisosInsert({ usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    putUpdatePermisosUpdate: async (req, res) => {
        try {
            const { usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol } = req.body;
            const result = await ModRol.put_UpdPermisoUpdt({ usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
    getVerPermisosRoles: async (req, res) => {
        const rol = await ModRol.get_verPermisosRoles()
        res.json(rol)
    },

    putUpdatePermisosDelete: async (req, res) => {
        try {
            const { usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol } = req.body;
            const result = await ModRol.put_UpdPermisosDel({ usuario, inventario, clientes, recordatorios, reportes, seguridad, configuracion, ventas, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },


    deleteRol: async (req, res) => {
        try {
            const { Id_Rol } = req.body;
            const result = await ModRol.deleteRol({ Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    getObjetos: async (req, res) => {
        const rol = await ModRol.get_Objetos()
        res.json(rol)
    },




}


