import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stylish_store/features/common/presentation/states/proceed_button/proceed_button_bloc.dart';

mixin ProceedButtonMixin<T extends StatefulWidget> on State<T> {
  final ProceedButtonBloc proceedButtonBloc = ProceedButtonBloc(
    DisableProceedButtonState(),
  );

  late final StreamSubscription<ProceedButtonState> _proceedButtonSubscription;

  @override
  void initState() {
    super.initState();
    _initProceedButton();
  }

  void onTapProceed();

  void _initProceedButton() {
    _proceedButtonSubscription = proceedButtonBloc.stream.listen((state) {
      if (state is TappedProceedButtonState) {
        onTapProceed();
      }
    });
  }

  void validateFormAndToggleProceedButton(GlobalKey<FormState> formKey) {
    if (formKey.currentState?.validate() ?? false) {
      proceedButtonBloc.add(EnableProceedButton());
    } else {
      proceedButtonBloc.add(DisableProceedButton());
    }
  }

  void _disposeProceedButton() {
    proceedButtonBloc.close();
    _proceedButtonSubscription.cancel();
  }

  void enableProceedButton() {
    proceedButtonBloc.add(EnableProceedButton());
  }

  void disableProceedButton() {
    proceedButtonBloc.add(DisableProceedButton());
  }

  @override
  void dispose() {
    _disposeProceedButton();
    super.dispose();
  }
}
