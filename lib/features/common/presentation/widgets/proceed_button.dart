import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_store/app/helpers/focus_helper.dart';
import 'package:stylish_store/features/common/presentation/states/proceed_button/proceed_button_bloc.dart';

class ProceedButton extends StatelessWidget {
  const ProceedButton({required this.child, required this.bloc, super.key});

  final Widget child;
  final ProceedButtonBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: state is DisableProceedButtonState
                ? Theme.of(context).disabledColor
                : null,
          ),
          onPressed: state is DisableProceedButtonState
              ? null
              : () {
                  FocusHelper.requestFocus(context);
                  bloc.add(OnTapProceedButton());
                },
          child: child,
        );
      },
    );
  }
}
