import 'package:flutter/cupertino.dart';
import 'package:testovoe/core/_core.dart';

class ChangeUserNamePage extends StatelessWidget {
  const ChangeUserNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(100, 246, 246, 246),
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Ваше имя'),
      ),
      child: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: CupertinoTextField(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(100, 253, 253, 253),
              borderRadius: BorderRadius.circular(13),
            ),
            placeholder: 'Ваше имя',
            onSubmitted: Navigator.of(context).pop,
          ),
        ),
      ),
    );
  }
}
