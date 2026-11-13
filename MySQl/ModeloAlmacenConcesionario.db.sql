BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Artículo" (
	"CodigoArticulo"	INTEGER,
	"Descripción"	INTEGER,
	"Precio"	REAL,
	"Stock"	INTEGER,
	"CodigoCategoria"	INTEGER,
	"CodigoProveedor"	INTEGER,
	"Estante"	INTEGER,
	PRIMARY KEY("CodigoArticulo"),
	CONSTRAINT "CodigoCategoria" FOREIGN KEY("CodigoCategoria") REFERENCES "Categoría"("CodigoCategoria"),
	CONSTRAINT "CodigoProveedor" FOREIGN KEY("CodigoProveedor") REFERENCES "Proveedores"("CodigoProveedor"),
	CONSTRAINT "CodigoEstante" FOREIGN KEY("Estante") REFERENCES "Estante"("CodigoEstante")
);
CREATE TABLE IF NOT EXISTS "Categoría" (
	"CodigoCategoria"	INTEGER,
	"descripción"	INTEGER,
	PRIMARY KEY("CodigoCategoria")
);
CREATE TABLE IF NOT EXISTS "Concesionario" (
	"Nombre vehículo"	INTEGER,
	"Tipo"	INTEGER,
	"Precio"	REAL,
	"UnidadesAlmacen"	REAL
);
CREATE TABLE IF NOT EXISTS "Empleados" (
	"nombre"	TEXT,
	"Teléfono"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Estante" (
	"CodigoEstante"	INTEGER,
	"Ubicación"	TEXT,
	PRIMARY KEY("CodigoEstante")
);
CREATE TABLE IF NOT EXISTS "Proveedores" (
	"CodigoProveedor"	INTEGER,
	"nombreprovee"	TEXT NOT NULL,
	"telefono"	TEXT,
	"dirección"	TEXT,
	PRIMARY KEY("CodigoProveedor")
);
INSERT INTO "Artículo" VALUES (1,'Mercedes AMG',38000.0,24,1,1,2);
INSERT INTO "Artículo" VALUES (2,'Kawasaki Ninja H2R',27000.0,8,2,2,2);
INSERT INTO "Artículo" VALUES (3,'Mercedes Clase G',74000.0,3,1,1,4);
INSERT INTO "Artículo" VALUES (4,'BMW X5',77000.0,14,1,3,3);
INSERT INTO "Artículo" VALUES (5,'Mercedes GLA',56000.0,19,1,1,1);
INSERT INTO "Artículo" VALUES (6,'Twingo',17000.0,23,1,4,1);
INSERT INTO "Categoría" VALUES (1,'Coche');
INSERT INTO "Categoría" VALUES (2,'Moto');
INSERT INTO "Concesionario" VALUES ('Mercedes AMG','Coche',38000.0,24.0);
INSERT INTO "Concesionario" VALUES ('Kawasaki Ninja H2R','Moto',27000.0,8.0);
INSERT INTO "Concesionario" VALUES ('Mercedes Clase G','Coche',74000.0,3.0);
INSERT INTO "Concesionario" VALUES (' BMW X5','Coche',77000.0,14.0);
INSERT INTO "Empleados" VALUES ('Miguel',643819489);
INSERT INTO "Empleados" VALUES ('Lucia',658289534);
INSERT INTO "Empleados" VALUES ('Antonio',623859000);
INSERT INTO "Empleados" VALUES ('Luis',623859314);
INSERT INTO "Estante" VALUES (1,'Almacen rojo - garaje 4');
INSERT INTO "Estante" VALUES (2,'Almacen azul - garaje 2');
INSERT INTO "Estante" VALUES (3,'Almacen azul - garaje 5');
INSERT INTO "Estante" VALUES (4,'Almacen verde - garaje 1');
INSERT INTO "Proveedores" VALUES (1,'Mercedes','613849238','Calle del Olivo, 27, 29018 Málaga, España.');
INSERT INTO "Proveedores" VALUES (2,'Kawasaki','653927842','Avenida de los Pinos, 14, 41013 Sevilla, España');
INSERT INTO "Proveedores" VALUES (3,'BMW','623984222','Calle Luna, 38, 46015 Valencia, España');
INSERT INTO "Proveedores" VALUES (4,'Renault','613891999','Calle Mega, 14, 46015 Valencia, España');
COMMIT;
