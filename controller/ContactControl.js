// import Contact from "../Models/ContactModels.js";
import connection from "../config/Databases.js";
export const getAllContat = async (req, res) => {
  try {
    // Define the SQL query to retrieve all contacts
    const sql = "SELECT * FROM contacts";

    // Execute the query
    const [contacts] = await connection.promise().execute(sql);

    res.status(200).json(contacts);
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};

export const createContact = async (req, res) => {
  const { nama, email, alasan_kontak, pesan } = req.body;

  try {
    // Define the SQL query to insert a new contact
    const sql =
      "INSERT INTO contacts (nama, email, alasan_kontak, pesan) VALUES (?, ?, ?, ?)";

    // Execute the query
    await connection
      .promise()
      .execute(sql, [nama, email, alasan_kontak, pesan]);

    res.status(200).json({ msg: `Thanks For Your ${alasan_kontak} ${nama}` });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  }
};
