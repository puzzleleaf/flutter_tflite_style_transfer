import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tflite_style_transfer/services/image/image_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'image_event.dart';

part 'image_state.dart';

part 'image_bloc.freezed.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImageFacade _imageFacade;

  ImageBloc(this._imageFacade) : super(ImageState.initial());

  @override
  Stream<ImageState> mapEventToState(
    ImageEvent event,
  ) async* {
    yield* event.map(
      loadModel: (event) async* {
        await _imageFacade.loadModel();
        yield state.copyWith(
          modelLoaded: true,
          isLoading: false,
        );
      },
      loadImage: (event) async* {
        yield state.copyWith(
          originImage: null,
          isLoading: true,
        );

        var image = await _imageFacade.loadImage();
        if (image == null) {
          yield state.copyWith(
            originImage: null,
            isLoading: false,
          );
        } else {
          yield state.copyWith(
            originImage: image,
            isLoading: false,
          );
        }
      },
      transferImage: (event) async* {
        yield state.copyWith(
          isLoading: true,
        );

        await Future.delayed(const Duration(milliseconds: 1000));

        var styleImageData = await _imageFacade.loadStyleImage(event.styleImagePath);
        if (styleImageData != null) {
          var transferImage = await _imageFacade.transfer(state.originImage, styleImageData);
          yield state.copyWith(
            transferImage: transferImage,
            isLoading: false,
          );
        } else {
          yield state.copyWith(
            isLoading: false,
          );
        }
      },
      resetImage: (event) async* {
        yield state.copyWith(
          originImage: null,
          transferImage: null,
          isLoading: false,
        );
      },
    );
  }
}
