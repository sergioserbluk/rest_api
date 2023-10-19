import { pool } from "./database.js";
class LibrosController{
    async getAll(req, res){
        const [result]=await pool.query('SELECT * FROM libros');
        res.json(result);
}
async getOne(req, res){
    const libro=req.body;
    const [result]=await pool.query('SELECT * FROM libros WHERE id=?',[libro.id]);
    res.json(result);
}

async create(req, res){
    const libro=req.body;
    const [result]=await pool.query('INSERT INTO libros(nombre, autor, categoria, anio_publicacion, isbn) VALUES (?,?,?,?,?)',[libro.nombre, libro.autor, libro.categoria, libro.anio_publicacion, libro.isbn]);
    res.json(result);
}
async update(req, res){
    //const {id}=req.params;
    const libro=req.body;
    const [result]=await pool.query('UPDATE libros SET nombre=?, autor=?,categoria=?, anio_publicacion=?, isbn=? WHERE id=?',[libro.nombre, libro.autor, libro.categoria, libro.anio_publicacion, libro.isbn, libro.id]);
    res.json(result);
}
async delete(req, res){
    const libro=req.body;
    const [result]=await pool.query('DELETE FROM libros WHERE id=?',[libro.id]);
    res.json(result);
}


}
export const libro = new LibrosController();
