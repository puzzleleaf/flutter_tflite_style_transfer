import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tflitestyletransfer/blocs/image_bloc.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  int selectStyle = -1;
  var imageBloc;

  @override
  void initState() {
    // TODO: implement initState
    imageBloc = context.bloc<ImageBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff020304),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.bloc<ImageBloc>().add(ImageEvent.resetImage());
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ImageBloc, ImageState>(
          builder: (context, state) {
            return Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: state.transferImage == null
                          ? Image.memory(state.originImage)
                          : Image.memory(state.transferImage),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var stylePath = 'assets/images/style$index.jpg';
                          return GestureDetector(
                            onTap: () {
                              _selectStyle(index, stylePath);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                border: selectStyle == index
                                    ? Border.all(color: Colors.yellow, width: 2)
                                    : null,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(stylePath),
                              ),
                            ),
                          );
                        },
                        itemCount: 25,
                      ),
                    )
                  ],
                ),
                Center(
                  child: state.isLoading ? _loadingWidget() : Container(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _selectStyle(index, stylePath) {
    if (selectStyle == index) {
      return;
    }

    setState(() {
      selectStyle = index;
    });

    imageBloc
        .add(ImageEvent.transferImage(stylePath));
  }

  Widget _loadingWidget() {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text(
          "Model Running...",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}