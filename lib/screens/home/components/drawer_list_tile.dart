import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.tileName,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String tileName;
  final String svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: const ColorFilter.mode(
          Colors.white54,
          BlendMode.srcIn,
        ),
        height: 16,
      ),
      title: Text(
        tileName,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
