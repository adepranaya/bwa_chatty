import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 20),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(height: 2),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: titleTextStyle,
                        ),
                        SizedBox(height: 16),
                        FriendItem(
                          title: 'Joshuer',
                          subtitle: 'Sorry, you’re not my ty...',
                          time: 'Now',
                          image: 'assets/images/friend1.png',
                        ),
                        SizedBox(height: 16),
                        FriendItem(
                          title: 'Gabriella',
                          subtitle: 'I saw it clearly and mig...',
                          time: '2:30',
                          image: 'assets/images/friend2.png',
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Groups',
                          style: titleTextStyle,
                        ),
                        SizedBox(height: 16),
                        FriendItem(
                          title: 'Jakarta Fair',
                          subtitle: 'Why does everyone ca...',
                          time: '11:11',
                          image: 'assets/images/group1.png',
                        ),
                        SizedBox(height: 16),
                        FriendItem(
                          title: 'Angga',
                          subtitle: 'Here here we can go...',
                          time: '7:11',
                          image: 'assets/images/group2.png',
                        ),
                        SizedBox(height: 16),
                        FriendItem(
                          title: 'Bentley',
                          subtitle: 'The car which does not...',
                          time: '7:11',
                          image: 'assets/images/group3.png',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: const Icon(Icons.add),
          // ...FloatingActionButton properties...
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}

class FriendItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String time;

  const FriendItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 55,
          height: 55,
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: titleTextStyle),
            Text(subtitle,
                style: subtitleTextStyle.copyWith(color: blackColor)),
          ],
        ),
        Spacer(),
        Text(
          time,
          style: subtitleTextStyle,
        )
      ],
    );
  }
}
