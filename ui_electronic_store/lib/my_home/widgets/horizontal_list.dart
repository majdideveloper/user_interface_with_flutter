import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ui_electronic_store/color.dart';

class HorizontalListItem extends StatelessWidget {
  HorizontalListItem({super.key});
  var listItem = ['Recommended', 'Phone', 'Laptop', 'Apple'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {},
            child: Text(
              "${listItem[index]}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                foregroundColor:
                    index == 0 ? AppColors.WHITE_COLOR : AppColors.BLACK_COLOR,
                backgroundColor:
                    index == 0 ? AppColors.PRIMARY_COLOR : AppColors.liteWhite,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          );
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
