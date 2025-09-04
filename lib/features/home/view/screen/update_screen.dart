import 'package:flutter/material.dart';
import '../../model/model.dart';

class UpdateScreen extends StatelessWidget {
  final List<Model3> updates;

  const UpdateScreen({super.key, required this.updates});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              "Updates",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.camera_alt_outlined, color: Colors.black),
            SizedBox(width: 10),
            Icon(Icons.more_vert, color: Colors.black),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: updates.length + 3, // +3: Status + My Status + Recent Updates
        itemBuilder: (context, index) {
          if (index == 0) {
            // أول عنصر: كلمة "Status"
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          } else if (index == 1) {
            // ثاني عنصر: My Status مع علامة الزائد
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/img_7.png"), // صورتك
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Text(
                      "My Status",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                ],
              ),
            );
          } else if (index == 2) {
            // ثالث عنصر: Recent Updates
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Text(
                "Recent Updates",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }

          // باقي العناصر: Updates
          final model3 = updates[index - 3];
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(model3.image3),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model3.name3,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        model3.text3,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.blueGrey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
