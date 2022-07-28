require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const fs = require('fs');
const https = require('https');
const pkg = require('../package.json');
const http = require('http');
const {socketInit} = require('./sockets');

const authRoutes = require('./routes/auth.routes');
const usuarioRoutes = require('./routes/usuario.routes');
const rolRoutes = require('./routes/rol.routes');
const filtroMapaRoutes = require('./routes/filtroMapa.routes');
const rolUsuarioRoutes = require('./routes/rolUsuario.routes');
const filtroUsuarioRoutes = require('./routes/filtroUsuario.routes');

const detectoresRoutes = require('./routes/detectores.routes');
const estacionesRoutes = require('./routes/estaciones.routes');
const precaucionesRoutes = require('./routes/precauciones.routes');
const trenesRoutes = require('./routes/trenes.routes');
const viasCedidasRoutes = require('./routes/viasCedidas.routes');
const viasLibresRoutes = require('./routes/viasLibres.routes');

//PUERTO DE LA APP
const PORT = process.env.PORT||3000;

//CONFIGURACION DE LA APP:
const app = express();
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);

app.set('port',PORT);
app.set('pkg', pkg);
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({extended:false}));

//CONFIGURAION DE CORS:

app.use(cors({
    origin: '*',
    //methods: ['GET','POST','DELETE','UPDATE','PUT','PATCH', 'HEAD'],
    //credentials: true,
    //maxAge: 3600
}));

//app.use(cors());

//RUTAS DE LA API:
app.get('/', (req, res) => {
    res.json({
        name: app.get('pkg').name,
        version: app.get('pkg').version,
        description: app.get('pkg').description,
        author: app.get('pkg').author,
    });
});
app.use('/api/auth', authRoutes);
app.use('/api/usuario', usuarioRoutes);
app.use('/api/rol', rolRoutes);
app.use('/api/filtroMapa', filtroMapaRoutes);
app.use('/api/rolUsuario', rolUsuarioRoutes);
app.use('/api/filtroUsuario', filtroUsuarioRoutes);

app.use('/api/detectores', detectoresRoutes);
app.use('/api/estaciones', estacionesRoutes);
app.use('/api/precauciones', precaucionesRoutes);
app.use('/api/trenes', trenesRoutes);
app.use('/api/viasCedidas', viasCedidasRoutes);
app.use('/api/viasLibres', viasLibresRoutes);

//SERVIDOR CON HTTPS::
/*
https.createServer({
    cert: fs.readFileSync('./ssl/server.crt'),
    key: fs.readFileSync('./ssl/server.key')
},app).listen(PORT,function(){
    console.log(`API REST HTTPS corriendo desde el puerto ${PORT}. `);
});
*/
//SERVIDOR SIN HTTPS::


server.listen(app.get('port'),()=>{
    console.log(`API FCAB MAPA corriendo desde el puerto ${app.get('port')} `);
});

socketInit(io);
