import 'package:flutter/material.dart';
import '../../model/model.dart';
import '../screen/call_screen.dart';
import '../screen/home_screen.dart';
import '../screen/update_screen.dart';
class NavigatorWidget extends StatefulWidget {
  NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}
class _NavigatorWidgetState extends State<NavigatorWidget> {
  int currentIndex = 0;

  late final List<Widget> pages; // هنا هنعرفها لاحقًا

  @override
  void initState() {
    super.initState();
    pages = [
      HomeScreen(),
      UpdateScreen(updates: modelel), // modelel موجود برا
      CallScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
