import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  get width => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 230,
              decoration: const BoxDecoration(
                color: Color(0xff363f93),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(33),
                    bottomRight: Radius.circular(50)),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 80,
                      left: 0,
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                      )),
                  Positioned(
                      top: 110,
                      left: 20,
                      child: Text(
                        "Your Books",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
             height: 40,
            ),
            Container(
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: 180,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 20.0, // soften the shadow
                            spreadRadius: 4.0, //extend the shadow
                            offset: Offset(-10, 10), //how much x and y axis
                          )
                        ],
                      ),
                    ),
                  )),
                  Positioned(
                      top: 0,
                      left: 30,
                      child: Card(
                        elevation: 10,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("Assets/habit.png"))),
                        ),
                      )), //(Card widget has been used)
                  Positioned(
                      top: 60,
                      left: 200,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Atomic Habit',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff363f93),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Author:  James Clear',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff363f93),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Text(
                              '"Your habits will\n determine your future."',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff363f93),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10, top: 25),
                  padding: EdgeInsets.only(left: 40, right: 20, bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff363f93),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff363f93),
                              offset: Offset(-10, 0.0),
                              )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('THE BEST',style: TextStyle(fontSize: 12,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text('Beggining of new life',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),

                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10, top: 25),
                  padding: EdgeInsets.only(left: 40, right: 20, bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff363f93),
                        borderRadius:
                        BorderRadius.only(topRight: Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff363f93),
                              offset: Offset(-10, 0.0),
                              )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('The Power of',style: TextStyle(fontSize: 12,color: Colors.white),),
                        SizedBox(height: 3,),
                        Text('Habit',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
