part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int index,
    required Uint8List? image,
  })= _Initial;

  factory HomeState.initial(){
     return const HomeState(index: 0, image: null);
  }
}
