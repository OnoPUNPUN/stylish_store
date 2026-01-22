import 'package:flutter/material.dart';

SizedBox get gap4 => const SizedBox(height: 4);

SizedBox get gap8 => const SizedBox(height: 8);

SizedBox get gap12 => const SizedBox(height: 12);

SizedBox get gap16 => const SizedBox(height: 16);

SizedBox get gap20 => const SizedBox(height: 20);

SizedBox get gap24 => const SizedBox(height: 24);

SizedBox get gap32 => const SizedBox(height: 32);

SizedBox get gap40 => const SizedBox(height: 40);

SizedBox get gap48 => const SizedBox(height: 48);

SizedBox get gap64 => const SizedBox(height: 64);

SizedBox get gapW4 => const SizedBox(width: 4);

SizedBox get gapW8 => const SizedBox(width: 8);

SizedBox get gapW12 => const SizedBox(width: 12);

SizedBox get gapW16 => const SizedBox(width: 16);

SizedBox get gapW20 => const SizedBox(width: 20);

SizedBox get gapW24 => const SizedBox(width: 24);

SizedBox get gapW32 => const SizedBox(width: 32);

SizedBox get gapW40 => const SizedBox(width: 40);

SizedBox get gapW48 => const SizedBox(width: 48);

SizedBox get gapW64 => const SizedBox(width: 64);

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
