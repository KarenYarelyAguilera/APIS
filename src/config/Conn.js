import mysql from 'mysql2/promise'

export const connectDB = async ()=>{
    const conexion = await mysql.createConnection({
        host:'127.0.0.1',
        user:'root',
        password:'',
        database:'proyectomultioptica'
    })
    
    return conexion
}