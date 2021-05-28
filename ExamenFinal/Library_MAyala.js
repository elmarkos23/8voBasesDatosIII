//Marco Ayala
//8vo "A"
//Realizar las siguientes consultas:

//1. Todos los libros con estado (status) “PUBLISH”, seleccionar todos los datos.
db.books.find({'status':'PUBLISH'});

//2. Todos los libros de categoría (categories) “PowerBuilder”, seleccionar sólo los titulos de libros.
db.books.find({'categories':'PowerBuilder'},{'title':1});

//3. Los libros que contengan entre 110 y 400 páginas (pageCount), seleccionar todos los datos.
db.books.find({$and:[{pageCount:{$gt:100}},{pageCount:{$lt:400}}]});

//4. La fecha de publicación (publishedDate) sea mayor que 01-01-2001. seleccionar solo datos de titulos y autores.
db.books.find({'publishedDate':{$gt:ISODate('2001-01-01')}},{'title':1,'authors':1});

//5. Los autores (auhors) empiecen con la inicial de su nombre, seleccionar sólo datos de autor.
db.books.find({'authors':/^M/},{'authors.$':1});

//6. Actualizar los libros de “Java” aumentando 7 páginas.
db.books.update({categories:'Java'},{$inc: { pageCount: +7}},{multi: true});

//7. Insertar un nuevo libro con sus datos personales tomar en cuenta usar todos los campos o atributos, el libro debe estar en estado “MEAP”.
db.books.insert({ "_id" : 1000, "title" : "Libro de Programación Marco Ayala", "isbn" : "1935182234", "pageCount" : 375, "publishedDate" : { "$date" : "2021-05-24T00:00:00.000-0700" }, "thumbnailUrl" : "https://imagenes/almiray.jpg", "shortDescription" : "Este libro contiene mucha información", "longDescription" : "Mucha informacion del contenido de mi libro", "status" : "MEAP", "authors" : [ "Marco Ayala" ], "categories" : [ "Java" ] });