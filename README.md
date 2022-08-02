# Szallas.hu Backend feladat

## A `docs` mappa tartama:

- `docs/Company.postman_collection.json`: Postman collection a teszteléshez
- `docs/Szallas.hu_Senior_Backend.pdf`: Feladatleírás
- `docs/szallas.sql`: SQL kódok feladatonként kigyűjtve
- `docs/szallashu-backend_2022-08-02.sql`: Teljes SQL Dump
- `docs/testCompanyDB.csv`: Teszt adatok CSV formátumban

## API végpontok:

### GET
`/companies/foundations`: Cégalapítások napra lebontva<br />
`/companies/activities`: Activity-k alapján csoportosított lista<br />

### POST
`/companies/get`: Cég lekérése ID alapján<br />
`/companies/`: Új cég hozzáadása

### PUT
`/companies/{id}`: Létező cég módosítása (ID alapján)