import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:ui_electronic_store/color.dart';
import 'package:ui_electronic_store/drawer.dart';
import 'package:ui_electronic_store/my_home/widgets/grid_list.dart';
import 'package:ui_electronic_store/helper_widget.dart';
import 'package:ui_electronic_store/my_home/widgets/header_widget.dart';
import 'package:ui_electronic_store/my_home/widgets/horizontal_list.dart';
import 'package:ui_electronic_store/my_home/my_home.dart';
import 'package:ui_electronic_store/text_utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      backdropColor: AppColors.PRIMARY_COLOR,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: true,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      drawer: const Drawers(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: const Icon(
                Icons.wc,
                color: AppColors.BLACK_COLOR,
                size: 24.0,
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                IconButton(
                  onPressed: _handleMenuButtonPressed,
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: AppColors.BLACK_COLOR,
                    size: 24.0,
                  ),
                ),
                const Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor: AppColors.PRIMARY_COLOR_LIGHT,
                    radius: 6,
                  ),
                )
              ],
            ),
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: TextUtils(
            fontWeight: FontWeight.bold,
            text: 'Shopping',
            color: AppColors.BLACK_COLOR,
          ),
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: const Icon(
              Icons.menu,
              color: AppColors.BLACK_COLOR,
              size: 24.0,
            ),
          ),
        ),
        body: const MyHome(),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
