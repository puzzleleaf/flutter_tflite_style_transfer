import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tflitestyletransfer/blocs/image_bloc.dart';
import 'package:tflitestyletransfer/pages/home_page.dart';
import 'package:tflitestyletransfer/pages/transfer_page.dart';
import 'package:tflitestyletransfer/services/image/image_facade.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ImageBloc(ImageFacade())..add(ImageEvent.loadModel()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
        ),
      ),
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
