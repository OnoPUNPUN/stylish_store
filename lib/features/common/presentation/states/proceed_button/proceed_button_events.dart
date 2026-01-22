part of 'proceed_button_bloc.dart';

sealed class ProceedButtonEvent {}

class EnableProceedButton extends ProceedButtonEvent {}

class DisableProceedButton extends ProceedButtonEvent {}

class OnTapProceedButton extends ProceedButtonEvent {}
