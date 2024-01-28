import 'package:flutter/cupertino.dart';
import 'package:testovoe/core/_core.dart';

class ChangeUserSurnamePage extends StatelessWidget {
  const ChangeUserSurnamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Ваша фамилия'),
      ),
      child: SafeArea(
        child: Padding(
          padding: kPagePadding,
          child: CupertinoTextField(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            placeholder: 'Ваша фамилия',
            onSubmitted: Navigator.of(context).pop,
          ),
        ),
      ),
    );
  }
}
