const orderModel = require("../models/order_model");

const orderController = {
  createOrder: async function (req, res) {
    try {
     const {user,items} = req.body;
     const newOrder = new orderModel({user:user, items : items})
        await newOrder.save();
        return res.json({success : true, data:newOrder, message: "Order created"})
    } catch (err) {
      return res.json({
        success: false,
        message: err,
      });
    }
  },

  fetchOrdersforUser:async function (req, res) {
    try {
     const userId = req.params.userId;
     const foundOrder = await orderModel.find({"user._id": userId})
   if(!foundOrder){
    return res.json({success : false, message: "Order not found"})
   }
        return res.json({success : true, data:foundOrder, message: "Order found"})
    } catch (err) {
      return res.json({
        success: false,
        message: err,
      });
    }
  },
  updateOrder: async function (req, res) {
    try {
     const {orderId, status} = req.body;
     const updateOrder = await orderModel.findOneAndUpdate({_id: orderId},{
    status: status},
    {new:true})
       
        return res.json({success : true, data:updateOrder, message: "Order updated"})
    } catch (err) {
      return res.json({
        success: false,
        message: err,
      });
    }
  }
};

module.exports = orderController;
   