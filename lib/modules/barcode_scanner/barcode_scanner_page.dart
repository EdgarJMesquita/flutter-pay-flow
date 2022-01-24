import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widget/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    /*  return BottomSheetWidget(
        primaryLabel: "teste2",
        secondaryLabel: "teste",
        primaryPressed: () {},
        secondaryPressed: () {},
        title: 'title',
        subtitle: 'subtitle'); */
    return SafeArea(
      bottom: true,
      left: true,
      right: true,
      top: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Escaneie o código de barras do boleto',
              style: TextStyles.buttonBackground,
            ),
            backgroundColor: Colors.black,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.black45),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  )),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(color: Colors.black45)))
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Adicionar da galeria",
            primaryPressed: () {},
            secondaryLabel: "Inserir código do boleto",
            secondaryPressed: () {},
          ),
        ),
      ),
    );
  }
}
