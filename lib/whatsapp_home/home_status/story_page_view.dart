import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final controller = StoryController();
  @override
  Widget build(BuildContext context) {
    List<StoryItem> storyItems = [
      StoryItem.text(
        title: "My First Story..", backgroundColor: Colors.blue,
        textStyle: TextStyle(
          fontSize: 25,
        ),
      ),

      StoryItem.text(title: "My Second Story..", backgroundColor: Colors.purpleAccent),

      StoryItem.pageImage(url: 'https://images.pexels.com/photos/210186/pexels-photo-210186.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', controller: null),

      StoryItem.pageImage(
        imageFit: BoxFit.cover,
        caption: "Nature Beauty",
        url: 'https://images.pexels.com/photos/443446/pexels-photo-443446.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        controller: null,
      ),
    ];
    return Scaffold(
      body: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
        onComplete: () {
          Navigator.pop(context);
        }
      ),
    );
  }
}
