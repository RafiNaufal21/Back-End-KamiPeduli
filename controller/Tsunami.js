import request from "request";
import cheerio from "cheerio";

export const tsunami = (req, res) => {
  request(`https://www.bmkg.go.id/tsunami`, (err, response, body) => {
    if (err || response.statusCode !== 200) {
      res.send(`${err.message}${response.statusCode}`);
    }
    try {
      const $ = cheerio.load(body);
      const element = $("tbody>tr");
      let nomor, lokasi, magnitude, kedalaman, wilayah;
      const daftar_tsunami = [];

      element.each(function () {
        nomor = $(this).find("td:nth-child(1)").text();
        lokasi = $(this).find("td:nth-child(2)").text();
        magnitude = $(this).find("td:nth-child(3)").text();
        kedalaman = $(this).find("td:nth-child(4)").text();
        wilayah = $(this).find("td:nth-child(5)").text();

        daftar_tsunami.push({ nomor, lokasi, magnitude, kedalaman, wilayah });
      });

      res.json({
        title: "Tsunami",
        status: "success",
        daftar_tsunami,
      });
    } catch (error) {
      console.log(error.message);
    }
  });
};
