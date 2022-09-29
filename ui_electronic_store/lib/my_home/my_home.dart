import 'package:flutter/material.dart';
import 'package:ui_electronic_store/color.dart';
import 'package:ui_electronic_store/my_home/widgets/grid_list.dart';
import 'package:ui_electronic_store/helper_widget.dart';
import 'package:ui_electronic_store/my_home/widgets/horizontal_list.dart';

import 'widgets/header_widget.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        color: AppColors.WHITE_COLOR,
        child: Column(
          children: [
            const HeaderWidget(),
            mediumVerticalSpacer,
            HorizontalListItem(),
            mediumVerticalSpacer,
            const GridListWidget(),
          ],
        ));
  }
}
