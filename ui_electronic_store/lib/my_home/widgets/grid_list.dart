import 'package:flutter/material.dart';
import 'package:ui_electronic_store/color.dart';
import 'package:ui_electronic_store/helper_widget.dart';
import 'package:ui_electronic_store/product.dart';
import 'package:ui_electronic_store/text_utils.dart';

class GridListWidget extends StatelessWidget {
  const GridListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10),
          itemCount: products.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xAAc5c5c7),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    products[index].image,
                    width: 150,
                    height: 150,
                  ),
                ),
                smallVerticalSpacer,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        products[index].name,
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextUtils(
                      fontSize: 14,
                      text: "\$${products[index].price}",
                      color: AppColors.GREY_COLOR,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}
