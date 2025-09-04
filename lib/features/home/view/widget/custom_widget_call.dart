import 'package:flutter/material.dart';
import 'package:untitled5/features/home/model/model.dart';
class CustomWidgetCall extends StatelessWidget {
  const CustomWidgetCall({super.key, required this.model2});
  final Model2 model2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(model2.image2),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model2.name2,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.call_missed_rounded,color: Colors.red,),
                    Text(
                      model2.text2,
                      style: const TextStyle(
                          fontSize: 15, color: Colors.blueGrey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 20,height: 10,),
          Icon(Icons.call,color: Colors.black,size: 20,)
        ],
      ),
    );
  }
}
