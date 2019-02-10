CREATE TABLE ofertas (
	id VARCHAR(255) PRIMARY KEY,
	titulo VARCHAR(255) NULL,
	mensaje VARCHAR(255) NULL,
	imagenes VARCHAR(255) NULL,
	fecha VARCHAR(255) NULL,
	duracion VARCHAR(255) NULL,
	id_negocio VARCHAR(255) NULL,
	estatus BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE ofertas_acciones(
	 id_oferta VARCHAR(255),
	 id_accion VARCHAR(255) ,
	 PRIMARY KEY(id_oferta, id_accion),
	 FOREIGN KEY (id_oferta) REFERENCES ofertas (id)
);