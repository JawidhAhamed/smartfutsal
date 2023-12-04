module.exports = function(app) {
    const { Auth } = require("../middleware/auth");

    const PlayerController = require("../controllers/PlayerController");

    // app.post("/registerUser", AuthController.registerUser);
    app.get('/sayhello',PlayerController.hello);

    
};