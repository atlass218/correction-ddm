
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body:SafeArea(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    stops: [0.1,0.9],
                    colors: [
                      Colors.blueGrey[300],
                      Colors.blueGrey[900],
                    ]
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children:[

                  Center(child: Text("Application de correction de\nla ddm faisceau",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'DancingScript',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black87,

                    ),
                  )),

                  CircleAvatar(
                    radius: 135,
                    backgroundColor: Colors.white,

                    child: CircleAvatar(
                      radius: 130,
                      backgroundImage: AssetImage('assets/images/avion_decollage.jpg'),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(100),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),


                    child: Row(
                      children: [
                        Icon(Icons.airplanemode_active,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton(onPressed: (){
                          print("passer à une autre page");

                        },

                          child: Text("Demarrer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                backgroundColor: Colors.black,
                                color: Colors.white

                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )

        ),
      );

  }
}
