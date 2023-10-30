import { Router } from "express";
import { libro } from "./controller.js";
export const router = Router();
router.get("/libros", libro.getAll);
router.get("/libro", libro.getOne);

router.post("/libro", libro.create);
router.put("/libro", libro.update);
router.delete("/libro", libro.delete);
router.delete("/delbyisbn", libro.deleteByISBN)
