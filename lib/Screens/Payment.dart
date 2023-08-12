import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/ProceedToPay(finalPay).dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
//  inal TextEditingController controller = TextEditingController();
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                  bottom: 300, left: 25, right: 25, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Payment Options",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 47,
                        width: 47,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/antiVirus.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        "Credit Card",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      CustomCheckBox(
                        value: shouldCheckDefault,
                        splashColor: Colors.blue.withOpacity(0.4),
                        tooltip: 'Custom Check Box',
                        splashRadius: 40,
                        onChanged: (val) {
                          setState(() {
                            shouldCheckDefault = val;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 47,
                        width: 47,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/antiVirus.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        "UPI",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      CustomCheckBox(
                        value: shouldCheckDefault,
                        splashColor: Colors.blue.withOpacity(0.4),
                        tooltip: 'Custom Check Box',
                        splashRadius: 40,
                        onChanged: (val) {
                          setState(() {
                            shouldCheckDefault = val;
                          });
                        },
                      ),
                      
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                     Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        height: 47,
                        width: 47,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            "assets/images/antiVirus.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        "Net Banking",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      CustomCheckBox(
                        value: shouldCheckDefault,
                        splashColor: Colors.blue.withOpacity(0.4),
                        tooltip: 'Custom Check Box',
                        splashRadius: 40,
                        onChanged: (val) {
                          setState(() {
                            shouldCheckDefault = val;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Summary/Bill",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Anti Virus Installation",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      Text(
                        "INR 34,000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Anti Virus Installation",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      Text(
                        "INR 34,000",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Color.fromARGB(75, 59, 59, 59)))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 22.14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "INR 34,000",
                        style: TextStyle(
                            fontSize: 22.14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 100,
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
                              color: Colors.black),
                        ),
                        // const SizedBox(height: 0.2,),
                        Row(
                          children: [
                            Text(" \u20B9",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
                            Text(" 5,999",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black)),
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
                        backgroundColor: Color(0xFFECF9FF),
                        child: TextButton(
                          child: const Text(
                            "Proceed to Pay",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProceedtoPay(),
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
