const fs = require("fs");

const requestLogger = (req, res, next) => {
  const date = new Date().toISOString();
  const method = req.method;
  const status = res.statusCode;
  console.log(req);
  const log = `${date} - ${method} - Status: ${status}\n`;

  fs.appendFile("request.txt", log, (err) => {
    if (err) {
      console.error("Error writing to file:", err);
    }
  });

  next();
};

module.exports = requestLogger;
