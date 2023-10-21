import 'package:flutter/material.dart';
import 'package:projectd2/View/post/view/post_screen.dart';
import '../../post/controller/title_post.dart';

class Post extends StatelessWidget {
  final String image;
  final String name;
  final String data;
  final int readTime;
  final String title;
  final String details;

  const Post(
      {super.key,
      required this.image,
      required this.name,
      required this.data,
      required this.readTime,
      required this.title,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.width * 0.04),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.start,
                ),
                TitlePost(
                  image: image,
                  name: name,
                  data: data,
                  readTime: readTime,
                ),
                Text(
                  details,
                  style: const TextStyle(
                    height: 1.5,
                    fontFamily: 'montserrat',
                    fontSize: 14,
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff181717),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(
                      MediaQuery.sizeOf(context).width * 0.9,
                      MediaQuery.sizeOf(context).width * 0.1,
                    ),
                  ),
                  onPressed: () {
                    // go to home screen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PostScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Read More',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
