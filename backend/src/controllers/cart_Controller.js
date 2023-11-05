const cartModel = require("../models/cart_model");

const cartController = {

  findCartforUser: async function(req,res){
    try{
      const user = req.params.user;
      const foundCart = await cartModel.findOne({user:user});
      if(!foundCart){
      return res.json({success : true , data:[], message: "Cart not found"})
      }
return res.json({success:true , data : foundCart.items,message:"Cart fetched"})
    }catch(err){
      return res.json({success:false ,message:err})
    }

  },
  addToCart: async function (req, res) {
    try {
      //we get three things from req - user , product, quantity
      const { user, product, quantity } = req.body;
      //find users cart
      const foundCart = await cartModel.findOne({ user: user });
      //cart not found
      if (!foundCart) {
        //create a new cart
        const newCart = new cartModel({ user: user });
        newCart.items.push({
          product: product,
          quantity: quantity,
        });
        await newCart.save();
        return res.json({
          success: true,
          data: newCart,
          message: "Product added to the cart",
        });
      }
      //if cart already exists
      const updatedCart = await cartModel.findOneAndUpdate(
        { user: user },
        {
          $push: { items: { product: product, quantity: quantity } },
        },
        {
          new: true,
        }
      );
      return res.json({
        success: true,
        data: updatedCart,
        message: "Cart updated",
      });
      //if cart exixts then append the new item or increase the quantity
    } catch (err) {
      return res.json({ success: false, message: err });
    }
  },
  removeFromCart: async function (req, res) {
    try {
      const { user, product } = req.body;
      const updatedCart = await cartModel.findOneAndUpdate(
        { user: user },
        { $pull: { items: { product: product } } },
        {new: true}
      );
      return res.json({
        success: true,
        data: updatedCart,
        message: "Product deleted from cart",
      });
    } catch (err) {
      return res.json({
        success: false,
     
        message: err,
      });
    }
  },
};

module.exports = cartController;
