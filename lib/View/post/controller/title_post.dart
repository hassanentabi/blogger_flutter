import 'package:flutter/material.dart';

class TitlePost extends StatelessWidget {
  final String image;
  final String name;
  final String data;
  final int readTime;

  const TitlePost(
      {super.key,
      required this.image,
      required this.name,
      required this.data,
      required this.readTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        25), // Optional: Add rounded corners
                  ),
                  child: Image.asset(image),
                ),
                 Text(
                  name,
                  style:const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const Text(
              ".",
              style: TextStyle(
                color: Color(0xffC8C8C8),
                fontFamily: 'Montserrat',
                fontSize: 11,
              ),
            ),
             Text(
              data,
              style:const TextStyle(
                color: Color(0xffC8C8C8),
                fontFamily: 'Montserrat',
                fontSize: 11,
              ),
            ),
            const Text(
              ".",
              style: TextStyle(
                color: Color(0xffC8C8C8),
                fontFamily: 'Montserrat',
                fontSize: 11,
              ),
            ),
             Text(
              "$readTime min. read",
              style: const TextStyle(
                color: Color(0xffC8C8C8),
                fontFamily: 'Montserrat',
                fontSize: 11,
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
