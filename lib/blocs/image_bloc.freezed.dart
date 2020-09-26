// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

// ignore: unused_element
  _ImageState call(
      {Uint8List originImage,
      Uint8List transferImage,
      bool modelLoaded,
      bool isLoading}) {
    return _ImageState(
      originImage: originImage,
      transferImage: transferImage,
      modelLoaded: modelLoaded,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  Uint8List get originImage;
  Uint8List get transferImage;
  bool get modelLoaded;
  bool get isLoading;

  $ImageStateCopyWith<ImageState> get copyWith;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
  $Res call(
      {Uint8List originImage,
      Uint8List transferImage,
      bool modelLoaded,
      bool isLoading});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;

  @override
  $Res call({
    Object originImage = freezed,
    Object transferImage = freezed,
    Object modelLoaded = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      originImage: originImage == freezed
          ? _value.originImage
          : originImage as Uint8List,
      transferImage: transferImage == freezed
          ? _value.transferImage
          : transferImage as Uint8List,
      modelLoaded:
          modelLoaded == freezed ? _value.modelLoaded : modelLoaded as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ImageStateCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$ImageStateCopyWith(
          _ImageState value, $Res Function(_ImageState) then) =
      __$ImageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uint8List originImage,
      Uint8List transferImage,
      bool modelLoaded,
      bool isLoading});
}

/// @nodoc
class __$ImageStateCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements _$ImageStateCopyWith<$Res> {
  __$ImageStateCopyWithImpl(
      _ImageState _value, $Res Function(_ImageState) _then)
      : super(_value, (v) => _then(v as _ImageState));

  @override
  _ImageState get _value => super._value as _ImageState;

  @override
  $Res call({
    Object originImage = freezed,
    Object transferImage = freezed,
    Object modelLoaded = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_ImageState(
      originImage: originImage == freezed
          ? _value.originImage
          : originImage as Uint8List,
      transferImage: transferImage == freezed
          ? _value.transferImage
          : transferImage as Uint8List,
      modelLoaded:
          modelLoaded == freezed ? _value.modelLoaded : modelLoaded as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ImageState implements _ImageState {
  const _$_ImageState(
      {this.originImage, this.transferImage, this.modelLoaded, this.isLoading});

  @override
  final Uint8List originImage;
  @override
  final Uint8List transferImage;
  @override
  final bool modelLoaded;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ImageState(originImage: $originImage, transferImage: $transferImage, modelLoaded: $modelLoaded, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageState &&
            (identical(other.originImage, originImage) ||
                const DeepCollectionEquality()
                    .equals(other.originImage, originImage)) &&
            (identical(other.transferImage, transferImage) ||
                const DeepCollectionEquality()
                    .equals(other.transferImage, transferImage)) &&
            (identical(other.modelLoaded, modelLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.modelLoaded, modelLoaded)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(originImage) ^
      const DeepCollectionEquality().hash(transferImage) ^
      const DeepCollectionEquality().hash(modelLoaded) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$ImageStateCopyWith<_ImageState> get copyWith =>
      __$ImageStateCopyWithImpl<_ImageState>(this, _$identity);
}

abstract class _ImageState implements ImageState {
  const factory _ImageState(
      {Uint8List originImage,
      Uint8List transferImage,
      bool modelLoaded,
      bool isLoading}) = _$_ImageState;

  @override
  Uint8List get originImage;
  @override
  Uint8List get transferImage;
  @override
  bool get modelLoaded;
  @override
  bool get isLoading;
  @override
  _$ImageStateCopyWith<_ImageState> get copyWith;
}

/// @nodoc
class _$ImageEventTearOff {
  const _$ImageEventTearOff();

// ignore: unused_element
  LoadModel loadModel() {
    return const LoadModel();
  }

// ignore: unused_element
  LoadImage loadImage() {
    return const LoadImage();
  }

// ignore: unused_element
  TransferImage transferImage(String styleImagePath) {
    return TransferImage(
      styleImagePath,
    );
  }

// ignore: unused_element
  ResetImage resetImage() {
    return const ResetImage();
  }
}

/// @nodoc
// ignore: unused_element
const $ImageEvent = _$ImageEventTearOff();

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadModel(),
    @required Result loadImage(),
    @required Result transferImage(String styleImagePath),
    @required Result resetImage(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadModel(),
    Result loadImage(),
    Result transferImage(String styleImagePath),
    Result resetImage(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadModel(LoadModel value),
    @required Result loadImage(LoadImage value),
    @required Result transferImage(TransferImage value),
    @required Result resetImage(ResetImage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadModel(LoadModel value),
    Result loadImage(LoadImage value),
    Result transferImage(TransferImage value),
    Result resetImage(ResetImage value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res> implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  final ImageEvent _value;
  // ignore: unused_field
  final $Res Function(ImageEvent) _then;
}

/// @nodoc
abstract class $LoadModelCopyWith<$Res> {
  factory $LoadModelCopyWith(LoadModel value, $Res Function(LoadModel) then) =
      _$LoadModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadModelCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $LoadModelCopyWith<$Res> {
  _$LoadModelCopyWithImpl(LoadModel _value, $Res Function(LoadModel) _then)
      : super(_value, (v) => _then(v as LoadModel));

  @override
  LoadModel get _value => super._value as LoadModel;
}

/// @nodoc
class _$LoadModel implements LoadModel {
  const _$LoadModel();

  @override
  String toString() {
    return 'ImageEvent.loadModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadModel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadModel(),
    @required Result loadImage(),
    @required Result transferImage(String styleImagePath),
    @required Result resetImage(),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return loadModel();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadModel(),
    Result loadImage(),
    Result transferImage(String styleImagePath),
    Result resetImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadModel != null) {
      return loadModel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadModel(LoadModel value),
    @required Result loadImage(LoadImage value),
    @required Result transferImage(TransferImage value),
    @required Result resetImage(ResetImage value),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return loadModel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadModel(LoadModel value),
    Result loadImage(LoadImage value),
    Result transferImage(TransferImage value),
    Result resetImage(ResetImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadModel != null) {
      return loadModel(this);
    }
    return orElse();
  }
}

abstract class LoadModel implements ImageEvent {
  const factory LoadModel() = _$LoadModel;
}

/// @nodoc
abstract class $LoadImageCopyWith<$Res> {
  factory $LoadImageCopyWith(LoadImage value, $Res Function(LoadImage) then) =
      _$LoadImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $LoadImageCopyWith<$Res> {
  _$LoadImageCopyWithImpl(LoadImage _value, $Res Function(LoadImage) _then)
      : super(_value, (v) => _then(v as LoadImage));

  @override
  LoadImage get _value => super._value as LoadImage;
}

/// @nodoc
class _$LoadImage implements LoadImage {
  const _$LoadImage();

  @override
  String toString() {
    return 'ImageEvent.loadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadModel(),
    @required Result loadImage(),
    @required Result transferImage(String styleImagePath),
    @required Result resetImage(),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return loadImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadModel(),
    Result loadImage(),
    Result transferImage(String styleImagePath),
    Result resetImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadImage != null) {
      return loadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadModel(LoadModel value),
    @required Result loadImage(LoadImage value),
    @required Result transferImage(TransferImage value),
    @required Result resetImage(ResetImage value),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return loadImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadModel(LoadModel value),
    Result loadImage(LoadImage value),
    Result transferImage(TransferImage value),
    Result resetImage(ResetImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadImage != null) {
      return loadImage(this);
    }
    return orElse();
  }
}

abstract class LoadImage implements ImageEvent {
  const factory LoadImage() = _$LoadImage;
}

/// @nodoc
abstract class $TransferImageCopyWith<$Res> {
  factory $TransferImageCopyWith(
          TransferImage value, $Res Function(TransferImage) then) =
      _$TransferImageCopyWithImpl<$Res>;
  $Res call({String styleImagePath});
}

/// @nodoc
class _$TransferImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $TransferImageCopyWith<$Res> {
  _$TransferImageCopyWithImpl(
      TransferImage _value, $Res Function(TransferImage) _then)
      : super(_value, (v) => _then(v as TransferImage));

  @override
  TransferImage get _value => super._value as TransferImage;

  @override
  $Res call({
    Object styleImagePath = freezed,
  }) {
    return _then(TransferImage(
      styleImagePath == freezed
          ? _value.styleImagePath
          : styleImagePath as String,
    ));
  }
}

/// @nodoc
class _$TransferImage implements TransferImage {
  const _$TransferImage(this.styleImagePath) : assert(styleImagePath != null);

  @override
  final String styleImagePath;

  @override
  String toString() {
    return 'ImageEvent.transferImage(styleImagePath: $styleImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransferImage &&
            (identical(other.styleImagePath, styleImagePath) ||
                const DeepCollectionEquality()
                    .equals(other.styleImagePath, styleImagePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(styleImagePath);

  @override
  $TransferImageCopyWith<TransferImage> get copyWith =>
      _$TransferImageCopyWithImpl<TransferImage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadModel(),
    @required Result loadImage(),
    @required Result transferImage(String styleImagePath),
    @required Result resetImage(),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return transferImage(styleImagePath);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadModel(),
    Result loadImage(),
    Result transferImage(String styleImagePath),
    Result resetImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transferImage != null) {
      return transferImage(styleImagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadModel(LoadModel value),
    @required Result loadImage(LoadImage value),
    @required Result transferImage(TransferImage value),
    @required Result resetImage(ResetImage value),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return transferImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadModel(LoadModel value),
    Result loadImage(LoadImage value),
    Result transferImage(TransferImage value),
    Result resetImage(ResetImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (transferImage != null) {
      return transferImage(this);
    }
    return orElse();
  }
}

abstract class TransferImage implements ImageEvent {
  const factory TransferImage(String styleImagePath) = _$TransferImage;

  String get styleImagePath;
  $TransferImageCopyWith<TransferImage> get copyWith;
}

/// @nodoc
abstract class $ResetImageCopyWith<$Res> {
  factory $ResetImageCopyWith(
          ResetImage value, $Res Function(ResetImage) then) =
      _$ResetImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetImageCopyWithImpl<$Res> extends _$ImageEventCopyWithImpl<$Res>
    implements $ResetImageCopyWith<$Res> {
  _$ResetImageCopyWithImpl(ResetImage _value, $Res Function(ResetImage) _then)
      : super(_value, (v) => _then(v as ResetImage));

  @override
  ResetImage get _value => super._value as ResetImage;
}

/// @nodoc
class _$ResetImage implements ResetImage {
  const _$ResetImage();

  @override
  String toString() {
    return 'ImageEvent.resetImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadModel(),
    @required Result loadImage(),
    @required Result transferImage(String styleImagePath),
    @required Result resetImage(),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return resetImage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadModel(),
    Result loadImage(),
    Result transferImage(String styleImagePath),
    Result resetImage(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetImage != null) {
      return resetImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadModel(LoadModel value),
    @required Result loadImage(LoadImage value),
    @required Result transferImage(TransferImage value),
    @required Result resetImage(ResetImage value),
  }) {
    assert(loadModel != null);
    assert(loadImage != null);
    assert(transferImage != null);
    assert(resetImage != null);
    return resetImage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadModel(LoadModel value),
    Result loadImage(LoadImage value),
    Result transferImage(TransferImage value),
    Result resetImage(ResetImage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resetImage != null) {
      return resetImage(this);
    }
    return orElse();
  }
}

abstract class ResetImage implements ImageEvent {
  const factory ResetImage() = _$ResetImage;
}
