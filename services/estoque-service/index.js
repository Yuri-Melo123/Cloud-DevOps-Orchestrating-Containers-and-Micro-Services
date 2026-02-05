const express = require("express");
const app = express();

const serviceName = process.env.SERVICE_NAME || "service";

app.get("/health", (req, res) => {
  res.json({ status: "UP", service: serviceName });
});

app.get("/", (req, res) => {
  res.json({ message: `Hello from ${serviceName}` });
});

app.listen(3000, () => {
  console.log(`Service ${serviceName} running on port 3000`);
});
