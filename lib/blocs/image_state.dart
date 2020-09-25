part of 'image_bloc.dart';

@freezed
abstract class ImageState with _$ImageState {
  const factory ImageState({
    Uint8List originImage,
    Uint8List transferImage,
    bool modelLoaded,
    bool isLoading,
  }) = _ImageState;

  factory ImageState.initial() => ImageState(
        originImage: null,
        transferImage: null,
        modelLoaded: false,
        isLoading: false,
      );
}
