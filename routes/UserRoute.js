import express from "express";
import {
  getAllUsers,
  createUser,
  loginUser,
  changePassword,
  deleteUser,
} from "../controller/UserControl.js";

const router = express.Router();

router.get("/user", getAllUsers);
router.post("/user", createUser);
router.post("/user-login", loginUser);
router.put("/user", changePassword);
router.delete("/user", deleteUser);

export default router;
