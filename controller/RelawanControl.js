// import Relawan from "../Models/RelawanModel.js";
import connection from "../config/Databases.js";
export const getAllRelawan = async (req, res) => {
  try {
    // Define the SQL query to retrieve all relawans
    const sql = "SELECT * FROM relawan";

    // Execute the query
    const [relawans] = await connection.promise().execute(sql);

    res.status(200).json(relawans);
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};

export const createRelawan = async (req, res) => {
  const {
    nama,
    email,
    nik,
    nomor_telepon,
    jenis_kelamin,
    kategori,
    fotodiri,
    alamat,
    keahlian,
  } = req.body;

  try {
    // Define the SQL query to insert a new relawan
    const sql =
      "INSERT INTO relawan (nama, email, nik, nomor_telepon, jenis_kelamin, kategori,fotodiri, alamat, keahlian) VALUES (?, ?, ?, ?, ?,?, ?, ?, ?)";

    // Execute the query with parameterized values
    await connection
      .promise()
      .execute(sql, [
        nama,
        email,
        nik,
        nomor_telepon,
        jenis_kelamin,
        kategori,
        fotodiri,
        alamat,
        keahlian,
      ]);

    res.status(200).json({ msg: `${nama} Relawan created successfully` });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};
