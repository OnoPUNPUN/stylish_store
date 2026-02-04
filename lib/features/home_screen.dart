import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stylish_store/app/extensions/theme_extension.dart';
import 'package:stylish_store/app/helpers/show_snack_message_helper.dart';
import 'package:stylish_store/features/common/presentation/widgets/theme_toggle_switch.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ThemeToggleSwitch(),
            const Gap(4),
            ElevatedButton(
              onPressed: () {
                showSnackMessage(context, message: 'Success');
              },
              child: const Text('Tap me'),
            ),
            const Gap(4),
            OutlinedButton(
              onPressed: () {
                showSnackMessage(context, message: 'Error', isError: true);
              },
              child: const Text('Tap me'),
            ),
           const Gap(4),
            TextButton(
              onPressed: () {
                showSnackMessage(
                  context,
                  message: 'Warning',
                  type: SnackMessageType.warning,
                );
              },
              child: const Text('Tap me'),
            ),
            const Gap(4),
            const SizedBox(height: 100, width: 200, child: Card()),
            const Gap(4),
            Text('This is a text', style: context.bodyLargeBold),
            const Gap(4),
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
