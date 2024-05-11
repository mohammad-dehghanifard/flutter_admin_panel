import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key, required this.title, required this.svgPath, required this.onTap,
  });

  final String title,svgPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title:  Text(
        title,
        style: context.theme.textTheme.bodySmall,

      ),
      horizontalTitleGap: 4,
      leading: SvgPicture.asset(
        svgPath,
        height: 16,
        colorFilter: const ColorFilter.mode(Colors.white30, BlendMode.srcIn),
      ),
    );
  }
}
