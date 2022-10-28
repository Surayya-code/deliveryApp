import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/unsplash.png",
            height: 450,),Container(
              margin: const EdgeInsets.only(top:50),
              child:  Text("Hər zaman xidmətinizdə",
              style: TextStyle(color: Colors.yellow.shade800,fontSize: 35,
              fontWeight: FontWeight.bold),
              ),
            ), const SizedBox(height: 50,),
            InkWell(
                onTap: () { 
                  Navigator.pushReplacementNamed(context, "homePage");
                },
                child:Ink(
                  padding:const EdgeInsets.symmetric(horizontal:80,vertical: 16),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow.shade800),
                  child: const Text("Alış-verişə Başla",style: TextStyle(color:Colors.white,fontSize:18,fontWeight: FontWeight.bold,),),) ,
              ),
          ],
        )),
    );
  }
}