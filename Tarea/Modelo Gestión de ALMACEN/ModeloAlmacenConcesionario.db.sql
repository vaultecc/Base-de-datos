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
COMMIT;
