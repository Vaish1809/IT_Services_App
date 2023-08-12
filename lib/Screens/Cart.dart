import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Payment.dart';
import 'package:orinova_it_servicesapp/Screens/ProfileScreens/SignOut.dart';
import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/ServiceCard.dart';
import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  final TextEditingController controller = TextEditingController();

  List<ServiceModel> services = [
    // Populate this list with your service data
    ServiceModel(
      title: "Anti Virus Installation",
      description: "Lorem ipsum dolor sit amet, consecter",
      provider: "Abc Service Provider",
      rating: 4.3,
      imageUrl: "assets/images/antiVirus.jpg",
      price: 5999,
    ),
    // Add more service items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700,  color: Color(0xFF303841)),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 100, left: 25, right: 25),
              child: Column(
                children: [
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                  SizedBox(height: 21),
                  for (var service in services) ServiceCard(service),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 100, // Adjust the height as needed
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF303841)),
                        ),
                        // const SizedBox(height: 0.2,),
                        Row(
                          children: [
                            Text(" \u20B9",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF303841))),
                            Text(" 5,999",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF303841))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 47,
                      width: 215,
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: Color.fromARGB(150, 236, 249, 255,),
                        child: TextButton(
                          child:const  Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFF303841)),  
                          ),
                          onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
                    },
                          
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
    