import 'package:flutter/material.dart';
import 'package:untitled5/features/home/view/widget/custom_widget_row.dart';
import '../../model/model.dart';
class CustomWidgetColoum extends StatelessWidget {
  const CustomWidgetColoum({super.key, required this.model});
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.all(20),
      child: Column(
        children: [
      CustomWidgetRow(model: model),


        ],
      ),

    );
  }
}
