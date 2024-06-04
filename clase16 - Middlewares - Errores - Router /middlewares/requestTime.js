const requestTime = (req, res, next) => {
  const start = Date.now();
  res.on("finish", () => {
    const duration = Date.now() - start;
    console.log(`Request duration: ${duration} ms`);
  });
  next();
};

module.exports = requestTime;
