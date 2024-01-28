import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Hello World',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          // ignore: sort_child_properties_last
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            width: 20,
            height: 20,
          ),
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/icons/wallpaper.jpeg'),
              ),
              SizedBox(
                height: 15,
              ),
              Text('Hey. This is my first flutter app.\n'),
              Text(
                  'Right now it is 28 January 2024  and the laptop says it is 08:39 am. So there is a scaffold that has many parts(?) There is Appbar (where Ive written Hello World and the arrow icon), then there is a body where I have added the avatar and some text in column. There is also a bottom navigation part.'),
              Text(
                  '\nIn the body there is a container. A container only has one child whereas  others can have many children widgets. I have added a sized box which is like empty space to make it look presentable.'),
              TextField(),
              Text(
                  '\nAbove there is a text field where you can text. Then, to add the image in CircleAvatar (used for profile pictures) or icons in Appbar, first we make an asset folder and an icon folder inside it. Add all the images inside the icons folder. Then go to pubspec.yaml and remove the comment for assets in Flutter: and modify the images path accordingly. Come back to our CircleAvatar, give it a radius and add the background image.'),
              Text('\nNow I need to figure out how to implement the scrolling feature. I cannot remember let me ask Chatgpt. Okay great! It works now. So apparently we can use two methods? They are SingleChildView() or listView(). I have used SingleChildVIew() here.'),
              Text('\nThats it for now. There is a bottom navigation bar. It is not functional yet. So clickin anything here will be futile. These dont even cover the basics but this is it for now.')
             
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/Filter.svg'),
          label: 'Filter'),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/dots.svg'),
          label: 'dots')
      ]),
    );
  }
}
