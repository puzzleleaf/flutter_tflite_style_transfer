import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tflite_style_transfer/blocs/image_bloc.dart';
import 'package:flutter_tflite_style_transfer/pages/home_page.dart';
import 'package:flutter_tflite_style_transfer/pages/transfer_page.dart';
import 'package:flutter_tflite_style_transfer/services/image/image_facade.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ImageBloc(ImageFacade())..add(ImageEvent.loadModel()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style Transfer',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0.0)),
      home: BlocBuilder<ImageBloc, ImageState>(
        builder: (context, state) {
          if (state.modelLoaded == false) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (state.originImage == null) {
              return HomePage();
            } else {
              return TransferPage();
            }
          }
        },
      ),
    );
  }
}
