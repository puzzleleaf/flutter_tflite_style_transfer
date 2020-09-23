import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/VanGogh_1887_Selbstbildnis.jpg',
              fit: BoxFit.cover,
            ),
            Column(
              children: <Widget>[
                Spacer(),
                Container(

                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 30, bottom: 30),
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.orange, style: BorderStyle.solid),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'ADD IMAGE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                fillColor: Colors.white,
                                child: Icon(
                                  Icons.image,
                                  size: 20.0,
                                ),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                constraints: BoxConstraints(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Image",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {},
                                elevation: 0.0,
                                fillColor: Colors.white,
                                child: Icon(
                                  Icons.file_download,
                                  size: 20.0,
                                ),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                                constraints: BoxConstraints(),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Save",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
