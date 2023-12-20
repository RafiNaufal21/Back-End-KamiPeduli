import express from "express";
import cors from "cors";
import Userrouter from "./routes/UserRoute.js";
import Relawanrouter from "./routes/RelawanRoute.js";
import Contactrouter from "./routes/ContactRoute.js";
import Donasirouter from "./routes/DonasiRoute.js";
import Gemparouter from "./routes/gempaRoute.js";
import tsunamirouter from "./routes/tsunamiRoute.js";

const port = 5055;
const app = express();
app.use(cors());
app.use(express.json());
app.use(Userrouter);
app.use(Relawanrouter);
app.use(Contactrouter);
app.use(Donasirouter);
app.use(Gemparouter);
app.use(tsunamirouter);

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
