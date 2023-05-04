part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.updateIndex({
    required int newIndex,
  }) = UpdateIndex;

  const factory HomeEvent.pickImage({
   required Uint8List? image,
  }) = PickImage;
  
}