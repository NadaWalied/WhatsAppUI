import 'package:flutter/material.dart';
import 'package:untitled5/features/home/model/model.dart';

import '../widget/custom_widget_call.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calls"),
        leading: const Icon(Icons.search),
      ),
      body: ListView.builder(
        itemCount: model.length + 1, // زودنا 1 علشان كلمة Recent
        itemBuilder: (context, index) {
          if (index == 0) {
            // أول عنصر: كلمة Recent
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "Recent Calls",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            );
          }

          return CustomWidgetCall(model2: model[index - 1]);
        },
      ),
    );
  }
}
