import { createDonasi, getAllDonasiUser } from "../controller/DonasiControl.js";
import express from "express";
const router = express.Router();

router.get("/donasi", getAllDonasiUser);
router.post("/donasi", createDonasi);

export default router;
