import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';

class BackButtonWidget extends StatelessWidget {
  String imagePath;

   BackButtonWidget({super.key,required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 1),
                  borderRadius: BorderRadius.circular(10)

      ),
      child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon:  ImageIcon(
                        
                          AssetImage(imagePath),
                          color: Color(kThemeColor),
                          size: 25,)),
    );
  }
}