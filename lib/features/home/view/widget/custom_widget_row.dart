import 'package:flutter/material.dart';
import 'package:untitled5/features/home/model/model.dart';

class CustomWidgetRow extends StatelessWidget {
  const CustomWidgetRow({super.key, required this.model});
  final Model model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(model.image),
          ),
          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                Text(
                  model.text,
                  style: const TextStyle(
                      fontSize: 15, color: Colors.blueGrey),
                  overflow: TextOverflow.ellipsis, // لو الرسالة طويلة
                ),
              ],
            ),
          ),
          Text(
            model.time,
            style: const TextStyle(
                fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
