import 'package:flutter/material.dart';
import 'package:payflow/shared/widget/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widget/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryPressed;
  final String secondaryLabel;
  final VoidCallback secondaryPressed;

  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.secondaryLabel,
      required this.primaryPressed,
      required this.secondaryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryPressed,
            ),
          ),
          const DividerVertical(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: secondaryPressed,
            ),
          ),
        ],
      ),
    );
  }
}
