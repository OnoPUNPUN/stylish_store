import 'package:flutter/material.dart';
import 'package:stylish_store/app/config/theme/app_utils.dart';
import 'package:stylish_store/app/extensions/theme_extension.dart';
import 'package:stylish_store/app/features/common/presentation/widgets/theme_toggle_switch.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title, super.key});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const ThemeToggleSwitch(),
            gap4,
            ElevatedButton(onPressed: () {}, child: const Text('Tap me')),
            gap4,
            OutlinedButton(onPressed: () {}, child: const Text('Tap me')),
            gap4,
            TextButton(onPressed: () {}, child: const Text('Tap me')),
            gap4,
            const SizedBox(height: 100, width: 200, child: Card()),
            gap4,
            Text('This is a text', style: context.bodyLargeBold),
            gap4,
            Text(
              'This is a text',
              style: context.bodyLargeBold!.copyWith(color: context.error),
            ),
          ],
        ),
      ),
    );
  }
}
