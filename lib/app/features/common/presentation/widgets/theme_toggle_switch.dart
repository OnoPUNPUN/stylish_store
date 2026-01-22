import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish_store/app/extensions/theme_extension.dart';
import 'package:stylish_store/app/features/common/domain/entities/theme_mode_entity.dart';
import 'package:stylish_store/app/features/common/presentation/states/theme_cubit.dart';

class ThemeToggleSwitch extends StatelessWidget {
  const ThemeToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeModeEntity>(
      builder: (context, mode) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          decoration: BoxDecoration(
            color: context.iconMuted.withAlpha(26),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildThemeButton(
                context: context,
                icon: Icons.light_mode_outlined,
                isSelected: mode == ThemeModeEntity.light,
                onTap: () => context.read<ThemeCubit>().changeTheme(
                  ThemeModeEntity.light,
                ),
              ),
              _buildThemeButton(
                context: context,
                icon: Icons.dark_mode_outlined,
                isSelected: mode == ThemeModeEntity.dark,
                onTap: () => context.read<ThemeCubit>().changeTheme(
                  ThemeModeEntity.dark,
                ),
              ),
              _buildThemeButton(
                context: context,
                icon: Icons.brightness_auto_outlined,
                isSelected: mode == ThemeModeEntity.system,
                onTap: () => context.read<ThemeCubit>().changeTheme(
                  ThemeModeEntity.system,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildThemeButton({
    required BuildContext context,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? context.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(
          icon,
          size: 18,
          color: isSelected ? context.onPrimary : context.iconMuted,
        ),
      ),
    );
  }
}
