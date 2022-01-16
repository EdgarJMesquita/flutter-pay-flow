import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String primaryLabel;
  final VoidCallback primaryPressed;
  final String secondaryLabel;
  final VoidCallback secondaryPressed;

  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.secondaryLabel,
      required this.primaryPressed,
      required this.secondaryPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            )),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                      text: title, children: [TextSpan(text: "\n$subtitle")]),
                  textAlign: TextAlign.center,
                ),
                SetLabelButtons(
                  primaryLabel: primaryLabel,
                  primaryPressed: primaryPressed,
                  secondaryLabel: secondaryLabel,
                  secondaryPressed: secondaryPressed,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
