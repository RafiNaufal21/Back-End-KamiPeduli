import { getAllContat, createContact } from "../controller/ContactControl.js";
import express from "express";
const router = express.Router();

router.get("/contact", getAllContat);
router.post("/contact", createContact);

export default router;
