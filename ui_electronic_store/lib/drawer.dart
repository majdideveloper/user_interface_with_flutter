import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:ui_electronic_store/helper_widget.dart';
import 'package:ui_electronic_store/text_utils.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                Icons.clear,
                color: Colors.white,
                size: 40.0,
              ),
            ),
            largeVerticalSpacer,
            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2012/02/29/15/40/beautiful-19075_1280.jpg'),
            ),
            smallVerticalSpacer,
            const Text(
              "Lilie Morgan",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            largeVerticalSpacer,
            largeVerticalSpacer,
            const Divider(
              thickness: 1.0,
              height: 3.0,
              indent: 3.0,
              endIndent: 2.0,
              color: Colors.white,
            ),
            mediumVerticalSpacer,
            TextUtils(
              text: "Shop",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "Categories",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "My Cart",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "Wishlist",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "Track Order",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "Support",
            ),
            smallVerticalSpacer,
            TextUtils(
              text: "FAQ",
            ),
            largeVerticalSpacer,
            largeVerticalSpacer,
            const Divider(
              thickness: 1.0,
              height: 3.0,
              indent: 3.0,
              endIndent: 2.0,
              color: Colors.white,
            ),
            largeVerticalSpacer,
            TextUtils(
              text: "Logout",
            ),
          ],
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
