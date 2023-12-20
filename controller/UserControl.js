import connection from "../config/Databases.js";
// Mengambil Semua User

export const getAllUsers = async (req, res) => {
  // Define the SQL query
  const sql = "SELECT * FROM users";

  try {
    // Execute the query
    const [users] = await connection.promise().execute(sql);

    return res.status(200).json(users);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    // Close the connection when done
    // connection.end();
  }
};

// Register
export const createUser = async (req, res) => {
  const { username, email, password } = req.body;

  // Define the SQL query
  const sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

  try {
    // Execute the query
    await connection.promise().execute(sql, [username, email, password]);

    return res.status(201).json({
      message: "User registered successfully",
    });
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    // Close the connection when done
    // connection.end();
  }
};

// Login

export const loginUser = async (req, res) => {
  const { email, password } = req.body;

  // Define the SQL query to retrieve user by email
  const sql = "SELECT * FROM users WHERE email = ?";

  try {
    // Execute the query
    const [users] = await connection.promise().execute(sql, [email]);

    // Check if user exists
    if (users.length === 0) {
      return res.status(404).json({ error: "User not found" });
    }

    // Check if the provided password matches the stored password
    const user = users[0];
    if (user.password !== password) {
      return res.status(401).json({ error: "Invalid credentials" });
    }

    return res.status(200).json({ message: "Login successful",username: user.username,email : user.email, });
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Internal Server Error" });
  } finally {
    // Close the connection when done
    // connection.end();
  }
};

// Update Password Berdasarkan Email Malas Di bcrypt lagi atau di hash dan compare

export const changePassword = async (req, res) => {
  try {
    const { email, newPassword } = req.body;

    // Check if email exists in the database
    const [existingUser] = await connection
      .promise()
      .execute("SELECT * FROM users WHERE email = ?", [email]);

    if (existingUser.length === 0) {
      return res.status(404).json({ message: "Email not found" });
    }

    // If email is found, update the password
    await connection
      .promise()
      .execute("UPDATE users SET password = ? WHERE email = ?", [
        newPassword,
        email,
      ]);

    return res.status(200).json({ message: "Password updated successfully" });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  } finally {
    // Close the connection when done
    // connection.end();
  }
};

// Menghapus User makek email sebagai unique query yang dibuat di UserModel
export const deleteUser = async (req, res) => {
  const { email } = req.body;

  try {
    // Check if the user with the specified email exists
    const [user] = await connection
      .promise()
      .execute("SELECT * FROM users WHERE email = ?", [email]);

    if (user.length === 0) {
      return res.status(404).json({ message: "User not found" });
    }

    // If the user is found, delete the user
    await connection
      .promise()
      .execute("DELETE FROM users WHERE email = ?", [email]);

    return res.status(200).json({ message: "User deleted successfully" });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: "Internal Server Error" });
  } finally {
    // Close the connection when done
    // connection.end();
  }
};
