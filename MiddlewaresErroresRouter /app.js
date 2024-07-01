const express = require("express");
const customMiddleware = require("./middlewares/customMiddleware");

const app = express();
const PORT = process.env.PORT || 3000;

app.set("view engine", "ejs");
app.set("views", __dirname + "/views");

app.use((req, res, next) => {
  if (req.method === "GET" && req.url !== "/") {
    res.status(404).render("notFound");
    customMiddleware(req, res, next);
  } else {
    next();
  }
});

app.get("/", customMiddleware, (req, res) => {
  res.render("index");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
