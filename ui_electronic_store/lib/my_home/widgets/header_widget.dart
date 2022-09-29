import 'package:ui_electronic_store/helper_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui_electronic_store/color.dart';
import 'package:ui_electronic_store/text_utils.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [AppColors.BLACK_COLOR, AppColors.GREY_COLOR]),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RawMaterialButton(
                  fillColor: AppColors.WHITE_COLOR,
                  shape: const StadiumBorder(),
                  elevation: 8.0,
                  onPressed: () {},
                  child: const Text(
                    "Promo",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                smallVerticalSpacer,
                TextUtils(
                  text: "Up to",
                  fontSize: 18.0,
                ),
                smallVerticalSpacer,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextUtils(
                      text: "30%",
                      fontWeight: FontWeight.bold,
                    ),
                    TextUtils(
                      text: "off",
                      fontSize: 16,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 5),
            ),
            const Spacer(),
            Positioned(
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(
                  'images/girl1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
