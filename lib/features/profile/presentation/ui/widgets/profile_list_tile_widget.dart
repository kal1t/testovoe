import 'package:flutter/cupertino.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    required this.title,
    this.trailing,
    this.onTap,
    super.key,
  });

  final String title;
  final String? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
      onTap: onTap,
      title: Text(title),
      trailing: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (trailing != null) Text(trailing ?? ''),
          const Icon(
            CupertinoIcons.right_chevron,
            color: CupertinoColors.systemGrey2,
          )
        ],
      ),
    );
  }
}
