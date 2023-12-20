import { tsunami } from "../controller/Tsunami.js";
import express from "express";

const router = express.Router();

router.get("/tsunami", tsunami);

export default router;
