import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tflitestyletransfer/blocs/image_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020304),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xff425066),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          RawMaterialButton(
                            onPressed: () {
                              context
                                  .bloc<ImageBloc>()
                                  .add(ImageEvent.loadImage());
                            },
                            fillColor: Colors.white,
                            elevation: 0.0,
                            padding: const EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                            constraints: BoxConstraints(),
                            child: Icon(
                              Icons.image,
                              size: 20.0,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Image',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
