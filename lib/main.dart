import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body:
          Center(
            child: Container(
              width: 350,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200]
              ),
              child: Row(
                children: [
                  Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(top: 10, left: 10, bottom: 2.4),
                      child: Image.asset('assets/doctor.png', fit: BoxFit.cover,width: 130, height: 200,)),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      // width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Dr.Pawan', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              Icon(Icons.favorite_outline,color: Colors.blue,)
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text('publishing and graphic design, Lorem ipsum is a placeholder text commonly', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(child: Text('Book', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.orange,size: 25,),
                                  Text('5.0', style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),





        ));
  }
}
