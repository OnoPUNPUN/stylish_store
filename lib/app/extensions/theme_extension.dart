import 'package:flutter/material.dart';

extension ThemeX on BuildContext {
  // ─── Core Theme ─────────────────────────────────────────────────────────
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;

  bool get isDark => theme.brightness == Brightness.dark;
  bool get isLight => theme.brightness == Brightness.light;

  // ─── Colors (Material Semantic) ────────────────────────────────────────
  Color get primary => colorScheme.primary;
  Color get onPrimary => colorScheme.onPrimary;

  Color get secondary => colorScheme.secondary;
  Color get onSecondary => colorScheme.onSecondary;

  Color get tertiary => colorScheme.tertiary;
  Color get onTertiary => colorScheme.onTertiary;

  Color get error => colorScheme.error;
  Color get onError => colorScheme.onError;

  Color get surface => colorScheme.surface;
  Color get onSurface => colorScheme.onSurface;

  Color get outline => colorScheme.outline;

  Color get background => theme.scaffoldBackgroundColor;

  // ─── Common UI Shortcuts ───────────────────────────────────────────────
  Color get cardColor => theme.cardTheme.color ?? surface;
  Color get dividerColor => theme.dividerTheme.color ?? outline;

  Color get iconMuted =>
      theme.iconTheme.color ?? colorScheme.onSurface.withValues(alpha: 0.6);

  // ─── Typography ────────────────────────────────────────────────────────
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;

  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;

  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;

  // ─── Bold Variants ─────────────────────────────────────────────────────
  TextStyle? get displayLargeBold =>
      displayLarge?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get displayMediumBold =>
      displayMedium?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get headlineLargeBold =>
      headlineLarge?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get headlineMediumBold =>
      headlineMedium?.copyWith(fontWeight: FontWeight.bold);

  TextStyle? get titleLargeBold =>
      titleLarge?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get titleMediumBold =>
      titleMedium?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get bodyLargeBold =>
      bodyLarge?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get bodyMediumBold =>
      bodyMedium?.copyWith(fontWeight: FontWeight.w600);

  // ─── Screen Utils ──────────────────────────────────────────────────────
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;

  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;
}
