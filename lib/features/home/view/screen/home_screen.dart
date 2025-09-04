import 'package:flutter/material.dart';
import '../../model/model.dart';
import '../widget/custom_widget_coloum.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: const [
            Text(
              "WhatsApp",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.camera_alt_outlined, color: Colors.black),
            SizedBox(width: 10,),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.grey,
        child: const Icon(Icons.chat, color: Colors.white),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: ModelList.length + 1, 
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              ),
            );
          }

          final item = ModelList[index - 1]; // -1 علشان السيرش بار

          if (searchText.isNotEmpty &&
              !item.name.toLowerCase().contains(searchText.toLowerCase())) {
            return const SizedBox.shrink();
          }

          return CustomWidgetColoum(model: item);
        },
      ),
    );
  }
}
