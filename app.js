import express  from "express";
import bodyParser from "body-parser"
import router from "./src/routes/rutas.js";

const PORT = process.env.PORT || 3000
const app = express()

app.use(bodyParser.json())
app.use(express.json())
app.use('/api',router)

app.listen(PORT,()=>console.log(`Servidor corriendo en puerto ${PORT}`))