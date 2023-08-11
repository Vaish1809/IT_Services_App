import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/model.dart';
import 'package:orinova_it_servicesapp/Screens/Service_details.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ServiceDetails(),
                    ),
                  );
                },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFECF9FF),
        ),
        height: 114,
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 71,
                  width: 62,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      service.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      service.title,
                      style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      service.description,
                      style: TextStyle(fontSize: 11.52),
                    ),
                    Text(
                      service.provider,
                      style: TextStyle(fontSize: 11.52, height: 0.8),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
         size: 12,color: Color(0xFFFFC23C),
                        ),
                        SizedBox(width: 5),
                        Text(
                          service.rating.toString(),
                          style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),



            // const SizedBox(height: 3,),
            //                   Row(
            //                     children: [
            //                       Icon(
            //                         Icons.star_rounded,
            //                         size: 12,color: Color(0xFFFFC23C),
            //                       ),
            //                       const SizedBox(width: 5),
            //                       Text(
            //                         "4.3",
            //                         style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
            //                       )
            //                 ],
            //                   ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_rounded,
                  size: 25,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.trolley,
                      size: 25,
                    ),
                  ),
                  Text("INR ${service.price.toString()}"),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
