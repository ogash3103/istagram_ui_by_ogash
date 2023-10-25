import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:istagram_ui_by_ogash/sceen/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changeColor = true;
  int currentPage = 0;
   var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: changeColor ? Colors.black :  Colors.black,
      elevation: 0,
      centerTitle: true,
      title:  Text("Instagram", style: TextStyle( color: changeColor ? Colors.grey[500]: Colors.black,),), systemOverlayStyle: SystemUiOverlayStyle.light,
      leading: IconButton(
          onPressed: (){}, 
          icon:const  Icon(Icons.camera_alt_outlined),color: changeColor ? Colors.grey[500]: Colors.black,
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon:const  Icon(Icons.favorite_border_outlined),
          color: changeColor ? Colors.grey[500]: Colors.black,
        ),
        IconButton(
          onPressed: (){},
          icon:const  Icon(Icons.send_sharp),
          color: changeColor ? Colors.grey[500]: Colors.black,
        ),
      ],
    ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap:(i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor:Colors.black,
        items: const  [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
             label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Feed",
          ),
        ],
      ),
    );
  }
}
