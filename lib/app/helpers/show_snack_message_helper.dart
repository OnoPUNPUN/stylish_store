import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

enum SnackMessageType { error, success, warning }

void showSnackMessage(
  BuildContext context, {
  required String message,
  String? title,
  bool? isError,
  SnackMessageType? type,
}) {
  final resolvedType =
      type ??
      (isError == true ? SnackMessageType.error : SnackMessageType.success);

  final toastificationType = {
    SnackMessageType.error: ToastificationType.error,
    SnackMessageType.warning: ToastificationType.warning,
    SnackMessageType.success: ToastificationType.success,
  }[resolvedType]!;

  final resolvedTitle =
      title ??
      {
        SnackMessageType.error: 'Error',
        SnackMessageType.warning: 'Warning',
        SnackMessageType.success: 'Success',
      }[resolvedType]!;
  toastification.dismissAll();
  toastification.show(
    context: context,
    type: toastificationType,
    applyBlurEffect: false,
    style: ToastificationStyle.flat,
    title: Text(resolvedTitle),
    description: Text(message),
    showProgressBar: false,
    alignment: Alignment.topRight,
    autoCloseDuration: const Duration(seconds: 3),
    borderRadius: BorderRadius.circular(12),
  );
}
