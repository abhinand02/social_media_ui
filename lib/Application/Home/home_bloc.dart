import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<UpdateIndex>((event, emit) {
      emit(state.copyWith(index: event.newIndex));
    });

    on<PickImage>((event, emit) {
      emit(state.copyWith(image: event.image));
    });
  }
}
