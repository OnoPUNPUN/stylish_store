part of 'proceed_button_bloc.dart';

sealed class ProceedButtonState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EnableProceedButtonState extends ProceedButtonState {}

class DisableProceedButtonState extends ProceedButtonState {}

class TappedProceedButtonState extends ProceedButtonState {}
