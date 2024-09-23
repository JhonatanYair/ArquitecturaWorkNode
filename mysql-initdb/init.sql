-- Crear tabla 'users' si no existe
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Insertar algunos registros de ejemplo
INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
INSERT INTO users (name, email) VALUES ('Jane Doe', 'jane@example.com');
INSERT INTO users (name, email) VALUES ('Alice Smith', 'alice@example.com');


ALTER USER 'sa'@'%' IDENTIFIED WITH mysql_native_password BY 'enter123@';
FLUSH PRIVILEGES;