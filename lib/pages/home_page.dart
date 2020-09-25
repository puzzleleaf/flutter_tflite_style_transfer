import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tflite_style_transfer/blocs/image_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020304),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/images/logo.png',
                width: 280,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 30),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xff425066),
                  style: BorderStyle.solid,
                ),
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
                            onPressed: () {
                              context
                                  .bloc<ImageBloc>()
                                  .add(ImageEvent.loadImage());
                            },
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
