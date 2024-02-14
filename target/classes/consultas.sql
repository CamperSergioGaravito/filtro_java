-- Active: 1706852612791@@127.0.0.1@3306@dabase_factura
SELECT * FROM factura WHERE cliente_id = 1

-- Crear tabla impuesto
CREATE TABLE impuestos (
    id_impuesto INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    anio YEAR,
    porcentaje DOUBLE(4,2)
)

-- 

INSERT INTO impuestos (anio, porcentaje) VALUES ("2024", 15)

-- Agregar campo iva

ALTER TABLE factura ADD COLUMN impuesto DOUBLE(10,2);

-- Crear descuentos

CREATE TABLE IF NOT EXISTS descuentos (
    id_descuento INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    tipo_descuento VARCHAR(100),
    monto_procentaje DOUBLE(10,2),
    estado BOOLEAN
)


CREATE TABLE IF NOT EXISTS descuentos_cliente (
    id_descuento INT,
    id_cliente INT,
    id_producto INT,
    FOREIGN KEY (id_descuento) REFERENCES descuentos(id_descuento),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_producto) REFERENCES producto(codigo)
)


SELECT * FROM cliente 


