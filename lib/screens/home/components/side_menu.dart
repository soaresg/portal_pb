import 'package:flutter/material.dart';
import 'package:portal_pb/constants.dart';
import 'package:portal_pb/screens/home/components/drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Image.asset('assets/images/logo.png'),
                ),
                DrawerListTile(
                  tileName: 'Dashboards',
                  svgSrc: 'assets/icons/menu_dashboard.svg',
                  press: () {},
                ),
                DrawerListTile(
                  tileName: 'Settings',
                  svgSrc: 'assets/icons/menu_setting.svg',
                  press: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: DrawerListTile(
              tileName: 'Logout',
              svgSrc: 'assets/icons/menu_logout.svg',
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
