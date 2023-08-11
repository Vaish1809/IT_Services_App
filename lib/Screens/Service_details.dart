import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: mediaQueryData.size.height * 0.04,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(25),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Color(0x33DBDBDB),
                  ),
                  child: ClipRRect(
                      child: Image.asset(
                        "assets/images/antiVirus.jpg",
                      ),
                      borderRadius: BorderRadius.circular(27)),
                  //(height: mediaQueryData.size.height *0.35,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  const Text(
                    "Virus Removal",
                    style: TextStyle(
                        fontSize: 22.14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFECF9FF),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.trolley,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Service Provider",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star_rounded,
                    size: 15,
                    color: Color(0xFFFFC23C),
                  ),
                  const SizedBox(width: 5),
                  Text("4.3",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFFC23C),
                          fontWeight: FontWeight.w700))
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 17.81,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const ExpandableText(
                "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
                expandText: 'Show more',
                collapseText: 'Show less',
                maxLines: 3,
                linkColor: Colors.blue,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Why choose us?",
                style: TextStyle(
                    fontSize: 17.81,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const ExpandableText(
                "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
                expandText: 'Show more',
                collapseText: 'Show less',
                maxLines: 3,
                linkColor: Colors.blue,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Text(
                "Rating and Reviews",
                style: TextStyle(
                    fontSize: 17.81,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Text(
                "User 1",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      width: 1.0, color: Color.fromARGB(75, 59, 59, 59)),
                )),
                child: const Row(
                  children: [
                    Text(
                      "Fantastic Service!",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1.5,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star_rounded,
                      size: 17,
                      color: Color(0xFFFFC23C),
                    ),
                    SizedBox(width: 5),
                    Text("4.3",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFFFC23C),
                            fontWeight: FontWeight.w700))
                  ],
                ),
              ),

              
            ],
          ),

          // Row(
          //   children: [
        ),
      ),
    );
  }
}















