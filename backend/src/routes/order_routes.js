const orderRoutes = require("express").Router();
const orderController = require("./../controllers/order_controller");

orderRoutes.post("/",orderController.createOrder);
orderRoutes.get("/:userId",orderController.fetchOrdersforUser);
orderRoutes.put("/updateStatus",orderController.updateOrder)
module.exports = orderRoutes;