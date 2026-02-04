import 'package:flutter/material.dart';

EdgeInsets get paddingAll4 => const EdgeInsets.all(4);

EdgeInsets get paddingAll8 => const EdgeInsets.all(8);

EdgeInsets get paddingAll12 => const EdgeInsets.all(12);

EdgeInsets get paddingAll16 => const EdgeInsets.all(16);

EdgeInsets get paddingAll20 => const EdgeInsets.all(20);

EdgeInsets get paddingAll24 => const EdgeInsets.all(24);

EdgeInsets get paddingAll32 => const EdgeInsets.all(32);

EdgeInsets get paddingAll40 => const EdgeInsets.all(40);

EdgeInsets get paddingAll48 => const EdgeInsets.all(48);

EdgeInsets get paddingH4 => const EdgeInsets.symmetric(horizontal: 4);

EdgeInsets get paddingH8 => const EdgeInsets.symmetric(horizontal: 8);

EdgeInsets get paddingH12 => const EdgeInsets.symmetric(horizontal: 12);

EdgeInsets get paddingH16 => const EdgeInsets.symmetric(horizontal: 16);

EdgeInsets get paddingH20 => const EdgeInsets.symmetric(horizontal: 20);

EdgeInsets get paddingH24 => const EdgeInsets.symmetric(horizontal: 24);

EdgeInsets get paddingH32 => const EdgeInsets.symmetric(horizontal: 32);

EdgeInsets get paddingH40 => const EdgeInsets.symmetric(horizontal: 40);

EdgeInsets get paddingH48 => const EdgeInsets.symmetric(horizontal: 48);

EdgeInsets get paddingV4 => const EdgeInsets.symmetric(vertical: 4);

EdgeInsets get paddingV8 => const EdgeInsets.symmetric(vertical: 8);

EdgeInsets get paddingV12 => const EdgeInsets.symmetric(vertical: 12);

EdgeInsets get paddingV16 => const EdgeInsets.symmetric(vertical: 16);

EdgeInsets get paddingV20 => const EdgeInsets.symmetric(vertical: 20);

EdgeInsets get paddingV24 => const EdgeInsets.symmetric(vertical: 24);

EdgeInsets get paddingV32 => const EdgeInsets.symmetric(vertical: 32);

EdgeInsets get paddingV40 => const EdgeInsets.symmetric(vertical: 40);

EdgeInsets get paddingV48 => const EdgeInsets.symmetric(vertical: 48);

BorderRadius get radius4 => BorderRadius.circular(4);

BorderRadius get radius8 => BorderRadius.circular(8);

BorderRadius get radius12 => BorderRadius.circular(12);

BorderRadius get radius16 => BorderRadius.circular(16);

BorderRadius get radius20 => BorderRadius.circular(20);

BorderRadius get radius24 => BorderRadius.circular(24);

BorderRadius get radius32 => BorderRadius.circular(32);

BorderRadius get radiusFull => BorderRadius.circular(9999);

EdgeInsets paddingSymmetric({double? horizontal, double? vertical}) {
  return EdgeInsets.symmetric(
    horizontal: horizontal ?? 0,
    vertical: vertical ?? 0,
  );
}

EdgeInsets paddingOnly({
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return EdgeInsets.only(
    left: left ?? 0,
    top: top ?? 0,
    right: right ?? 0,
    bottom: bottom ?? 0,
  );
}

SizedBox gap(double height) => SizedBox(height: height);

SizedBox gapW(double width) => SizedBox(width: width);
