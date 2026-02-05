const express = require("express");
const app = express();

app.get("/health", (req, res) => {
  res.json({ status: "UP", service: process.env.SERVICE_NAME });
});

app.listen(3000, () => {
  console.log("Service running on port 3000");
});
