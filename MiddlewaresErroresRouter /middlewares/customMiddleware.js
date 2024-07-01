const requestTime = require("../middlewares/requestLogger");
const requestLogger = require("../middlewares/requestTime");

const customMiddleware = (req, res, next) => {
  requestTime(req, res, () => {
    requestLogger(req, res, next);
  });
};

module.exports = customMiddleware;
