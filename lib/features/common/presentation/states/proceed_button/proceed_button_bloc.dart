import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'proceed_button_events.dart';
part 'proceed_button_states.dart';

class ProceedButtonBloc extends Bloc<ProceedButtonEvent, ProceedButtonState> {
  ProceedButtonBloc(super.initialState) {
    on<EnableProceedButton>((_, emit) {
      emit(EnableProceedButtonState());
    });

    on<DisableProceedButton>((_, emit) {
      emit(DisableProceedButtonState());
    });

    on<OnTapProceedButton>((_, emit) {
      emit(TappedProceedButtonState());
    });
  }
}
