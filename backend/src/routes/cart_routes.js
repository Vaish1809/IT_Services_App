const CartRoutes = require("express").Router();
const cartController = require("./../controllers/cart_Controller");

CartRoutes.post("/",cartController.addToCart);
CartRoutes.delete("/",cartController.removeFromCart)
CartRoutes.get("/:user",cartController.findCartforUser)
module.exports = CartRoutes;