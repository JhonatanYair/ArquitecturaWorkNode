-- Crear tabla 'users' si no existe
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Crear tabla 'products' si no existe
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    imagen VARCHAR(255) NOT NULL
);

-- Insertar algunos registros de ejemplo en la tabla 'users'
INSERT INTO users (name, email) VALUES 
('John Doe', 'john@example.com'),
('Jane Doe', 'jane@example.com'),
('Alice Smith', 'alice@example.com');

-- Insertar algunos productos en la tabla 'products'
INSERT INTO products (name, description, price, imagen) VALUES
('Producto 1', 'Descripción del producto 1.', 10.00, 'https://via.placeholder.com/150?text=Producto+1'),
('Producto 2', 'Descripción del producto 2.', 20.00, 'https://via.placeholder.com/150?text=Producto+2'),
('Producto 3', 'Descripción del producto 3.', 30.00, 'https://via.placeholder.com/150?text=Producto+3');

-- Cambiar la contraseña del usuario 'sa' (opcional)
ALTER USER 'sa'@'%' IDENTIFIED WITH mysql_native_password BY 'enter123@';
FLUSH PRIVILEGES;
