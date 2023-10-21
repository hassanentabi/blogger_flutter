import 'package:flutter/material.dart';

import '../controller/title_post.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  String myText1 =
      ''' I recently read a helpful article on Hashnode by Simon Egersand titled "Write Git Commit Messages Your Colleagues Will Love," and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.

You're probably thinking to yourself, "my commits are just fine, thank you." But are they really? Let's take a closer look.
''';
  String myText2 =
      '''Git commits are like little snapshots of your code. They let you and others see what changes were made, and when. They also let you roll back those changes when something inevitably goes wrong.

That's why it's important to make sure your git commits are as clear and concise as possible. Otherwise, you run the risk of confusing yourself and others down the road.

 ''';
  String myText3 = '''There are three main problems I find with many commits:
1.They're not informative enough.
2.They're not helpful to others.
 ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();

          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('images/bookmark.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffF5F5F5),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TitlePost(image:"images/avatar1.png" , name:"Travis Aaron Wagner" ,data:'Jul 29, 2022' , readTime: 4,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Row(
                //       children: [
                //         Container(
                //           width: 40,
                //           height: 40,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(
                //                 25), // Optional: Add rounded corners
                //           ),
                //           child: Image.asset("images/avatar1.png"),
                //         ),
                //         const Text(
                //           "Travis Aaron Wagner",
                //           style: TextStyle(
                //             fontFamily: 'Montserrat',
                //             fontSize: 12,
                //           ),
                //         ),
                //       ],
                //     ),
                //     const Text(
                //       ".",
                //       style: TextStyle(
                //         color: Color(0xffC8C8C8),
                //         fontFamily: 'Montserrat',
                //         fontSize: 11,
                //       ),
                //     ),
                //     const Text(
                //       "Jul 29, 2022",
                //       style: TextStyle(
                //         color: Color(0xffC8C8C8),
                //         fontFamily: 'Montserrat',
                //         fontSize: 11,
                //       ),
                //     ),
                //     const Text(
                //       ".",
                //       style: TextStyle(
                //         color: Color(0xffC8C8C8),
                //         fontFamily: 'Montserrat',
                //         fontSize: 11,
                //       ),
                //     ),
                //     const Text(
                //       "4 min. read",
                //       style: TextStyle(
                //         color: Color(0xffC8C8C8),
                //         fontFamily: 'Montserrat',
                //         fontSize: 11,
                //       ),
                //     ),
                //   ],
                // ),
                // const Divider(
                //   thickness: 1,
                // ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: const Text(
                    'Please Start Writing Better Git Commits',
                    style: TextStyle(
                        fontFamily: 'montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        myText1,
                        style: const TextStyle(
                          height: 1.5,
                          fontFamily: 'montserrat',
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "Why Are Good Commits Important/?",
                        style: TextStyle(
                            height: 1.5,
                            fontFamily: 'montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        myText2,
                        style: const TextStyle(
                          height: 1.5,
                          fontFamily: 'montserrat',
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "The Problem With Your Current Commits",
                        style: TextStyle(
                            height: 1.5,
                            fontFamily: 'montserrat',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        myText3,
                        style: const TextStyle(
                          height: 1.5,
                          fontFamily: 'montserrat',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
