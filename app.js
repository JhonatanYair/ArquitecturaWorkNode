const express = require('express');
const mysql = require('mysql');
const cors = require('cors');  // Importar cors

const app = express();
const port = 3000;

// Usar CORS para permitir el acceso desde cualquier origen
app.use(cors());

// Configuración de la conexión a la base de datos
const connection = mysql.createConnection({
    // host: 'localhost',
    host: 'node.contmysql',
    // port: 3307,
    user: 'sa',
    password: 'enter123@',
    database: 'projectExa'
});

// Conectar a la base de datos
connection.connect((error) => {
    if (error) throw error;
    console.log('..conectado a la base de datos...');
});

// Endpoint para obtener todos los usuarios
app.get('/users', (req, res) => {
    connection.query('SELECT * FROM users', (error, rows) => {
        if (error) {
            return res.status(500).json({ error: 'Error en la consulta' });
        }
        res.json(rows);
    });
});

// Iniciar el servidor
app.listen(port, () => {
    console.log(`Servidor escuchando en http://localhost:${port}`);
});