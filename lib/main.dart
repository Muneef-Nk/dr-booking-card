import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
            title: Text(
              "All Doctors",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(Icons.search),
                    title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search a Doctor"),
                    ),
                    trailing: Icon(Icons.mic),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        width: 350,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100]),
                        child: Row(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10),
                                child: Image.asset(
                                  data[index].image,
                                  fit: BoxFit.fitHeight,
                                  width: 130,
                                  height: 180,
                                )),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(20),
                                // width: 200,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data[index].name,
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.favorite_outline,
                                          color: Colors.cyan,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'publishing and graphic design, Lorem ipsum is a placeholder text commonly',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.cyan,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                              child: Text(
                                            'Book',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 16),
                                          )),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 25,
                                            ),
                                            Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
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
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
