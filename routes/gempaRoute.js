import { gempa, gempa_dirasakan, gempa_terkini } from "../controller/gempa.js";

import express from "express";

const router = express.Router();

router.get("/gempa", gempa);
router.get("/gempa/dirasakan", gempa_dirasakan);
router.get("/terkini", gempa_terkini);

export default router;
