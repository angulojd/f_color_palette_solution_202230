import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: ListView(
          children: [
            ColorPalette(
              baseColor:  'F65A83',
              baseColor1: 'FF87B2',
              baseColor2: '42032C',
              baseColor3: 'D36B00',
              baseColor4: 'E6D2AA',
              callback: showColor,
            ),
            ColorPalette(
              baseColor:  '87805E',
              baseColor1: 'B09B71',
              baseColor2: 'D8CCA3',
              baseColor3: 'EDDFB3',
              baseColor4: 'FFEE63',
              callback: showColor,
            ),
            ColorPalette(
              baseColor:  '9EB23B',
              baseColor1: 'C7D36F',
              baseColor2: 'FCF9C6',
              baseColor3: 'E0DECA',
              baseColor4: 'D4D925',
              callback: showColor,
            ),
            ColorPalette(
              baseColor:  'F7EC09',
              baseColor1: '3EC70B',
              baseColor2: '3B44F6',
              baseColor3: 'A149FA',
              baseColor4: 'FF5B00',
              callback: showColor,
            ),
            ColorPalette(
              baseColor:  '820000',
              baseColor1: 'B9005B',
              baseColor2: 'FF7C7C',
              baseColor3: 'FEE0C0',
              baseColor4: '990000',
              callback: showColor,
            )
          ],
        ));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
