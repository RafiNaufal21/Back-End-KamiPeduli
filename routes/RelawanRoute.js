import { getAllRelawan, createRelawan } from "../controller/RelawanControl.js";
import express from "express";

const router = express.Router();

router.get("/relawan", getAllRelawan);
router.post("/register-relawan", createRelawan);
export default router;
