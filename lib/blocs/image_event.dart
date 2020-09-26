part of 'image_bloc.dart';

@freezed
abstract class ImageEvent with _$ImageEvent {
  const factory ImageEvent.loadModel() = LoadModel;
  const factory ImageEvent.loadImage() = LoadImage;
  const factory ImageEvent.transferImage(String styleImagePath) = TransferImage;
  const factory ImageEvent.resetImage() = ResetImage;
}
