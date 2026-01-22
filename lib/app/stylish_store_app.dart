import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_store/app/config/theme/app_theme.dart';
import 'package:stylish_store/app/constants/app_constant.dart';

import 'package:stylish_store/di.dart';
import 'package:stylish_store/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/features/common/presentation/states/theme_cubit.dart';
import 'package:stylish_store/features/home_screen.dart';

class StylishStoreApp extends StatelessWidget {
  const StylishStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeCubit>()..loadTheme()),
      ],

      child: BlocBuilder<ThemeCubit, ThemeModeEntity>(
        builder: (context, themeMode) {
          return MaterialApp(
            title: AppConfiguration.appName,
            theme: AppTheme.light(),
            darkTheme: AppTheme.dark(),
            themeMode: context.read<ThemeCubit>().flutterThemeMode,
            home: const MyHomePage(title: 'Home'),
          );
        },
      ),
    );
  }
}
