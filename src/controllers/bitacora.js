import { ModBitacora } from "../models/bitacora.js";

export const ContrBitacora = {

    //-----------LOGIN---------------

    postInsertLogin : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertLogin({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

     //---------RECUPERACION DE CONTRASEÑA-----------------

    postInsertContra : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertContra({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
 //---------------------MODULO EMPLEADO------------------
 //------Ingreso al modulo de empleados----------
 postInsertModEmpleado : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertModEmpleado({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------Registro de Empleado-------------
    postInsertRegistroEmpleado : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertRegistroEmpleado({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//--------- Ver lista de empleados-------------
    postVerListaEmpleados : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postVerListaEmpleados({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postActualizarEmpleado({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//-----------Eliminar empleado--------

postEliminarEmpleado: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarEmpleado({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------USUARIO--------------

//------------------Insertar Usuario----------------
postInsertUsuario:async(req,res)=> {
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postInsertUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------Lista de Usuario------------
postListaUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postListaUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},
//---------Actualizar Usuario-----------------
postActualizarUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postActualizarUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},

//------------Eliminar Usuario---------------------
postEliminarUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postEliminarUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},

//----------MODULO DE VENTAS-------------------
postModuloVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postModuloVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------Venta-------------------
postInsertVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------Vista de la lista de ventas-------------------
postListaVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postListaVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------Actualizacion de Venta---------------
postActualizacionVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizacionVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------------Eliminar Venta---------------------
postEliminarVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------Ingreso a la pantalla de Garantia---------------
postPantallaGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------Registro de Garantia-------------
postInsertGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Garantia-----------------
postVerListaGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Garantia-----------------
postActualizarGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de Garantia-----------------
postEliminarGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


}