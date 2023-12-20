// import Donasi from "../Models/DonasiModel.js";
import connection from "../config/Databases.js";
export const getAllDonasiUser = async (req, res) => {
  try {
    // Define the SQL query to retrieve all donasis
    const sql = "SELECT * FROM donasi";

    // Execute the query
    const [donasi] = await connection.promise().execute(sql);

    res.status(200).json({ msg: "success", data: donasi });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};

export const createDonasi = async (req, res) => {
  const { nama, email, nomortelepon, pesan, nominal } = req.body;

  try {
    // Define the SQL query to insert a new donasi
    const sql =
      "INSERT INTO donasi (nama, email, nomortelepon, pesan, nominal) VALUES (?, ?, ?, ?, ?)";

    // Execute the query
    await connection
      .promise()
      .execute(sql, [nama, email, nomortelepon, pesan, nominal]);

    res.status(200).json({ msg: `Thanks For Your Donasi ${nama}` });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};
