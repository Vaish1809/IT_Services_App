import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.white ,
        centerTitle: true,
        title: Text("Notifications",style: TextStyle(fontSize: 24.24,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        constraints: BoxConstraints.expand(),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0x33DBDBDB),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 2,
              ),
              IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.all(6),
                  // height: 34,
                  // width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFECF9FF)),
                  alignment: Alignment.center,
                  //child: FittedBox( fit:BoxFit.contain,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 17.81, fontWeight: FontWeight.w700,
                      color: Color(0xFF303841),
                      //  ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                "Your request for Virus Removal Service has been received. A technician will be assigned shortly.",
                style: TextStyle(
                  fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(
                height: 29,
              ),
              Text(
                "Check out our latest service offers! Get a 10% discount on Data Recovery this week.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(height: 48,),
                IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.all(6),
                  // height: 34,
                  // width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFECF9FF)),
                  alignment: Alignment.center,
                  //child: FittedBox( fit:BoxFit.contain,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 17.81, fontWeight: FontWeight.w700,
                      color: Color(0xFF303841),
                      //  ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                "Your request for Virus Removal Service has been received. A technician will be assigned shortly.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400 ,color: Color(0xFF303841),),
              ),
              const SizedBox(
                height: 29,
              ),
              Text(
                "Check out our latest service offers! Get a 10% discount on Data Recovery this week.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(height: 48,),
               IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.all(6),
                  // height: 34,
                  // width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFECF9FF)),
                  alignment: Alignment.center,
                  //child: FittedBox( fit:BoxFit.contain,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 17.81, fontWeight: FontWeight.w700,
                      color: Color(0xFF303841),
                      //  ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                "Your request for Virus Removal Service has been received. A technician will be assigned shortly.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400 ,color: Color(0xFF303841),),
              ),
              const SizedBox(
                height: 29,
              ),
              Text(
                "Check out our latest service offers! Get a 10% discount on Data Recovery this week.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(height: 48,),
               IntrinsicWidth(
                child: Container(
                  padding: EdgeInsets.all(6),
                  // height: 34,
                  // width: 83,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFECF9FF)),
                  alignment: Alignment.center,
                  //child: FittedBox( fit:BoxFit.contain,
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 17.81, fontWeight: FontWeight.w700,
                      color: Color(0xFF303841),
                      //  ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                "Your request for Virus Removal Service has been received. A technician will be assigned shortly.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(
                height: 29,
              ),
              Text(
                "Check out our latest service offers! Get a 10% discount on Data Recovery this week.",
                style: TextStyle(
                    fontSize: 14, height: 1.1, fontWeight: FontWeight.w400, color: Color(0xFF303841),),
              ),
              const SizedBox(height: 48,),
            ],
          ),
        ),
      ),
    );
  }
}
