import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String leadingImageAsset;
  final String title;
  final VoidCallback onTap;
  final double fontSize;

  const CustomListTile({
    super.key,
    required this.leadingImageAsset,
    required this.title,
    required this.onTap,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.03,
        bottom: MediaQuery.of(context).size.width * 0.005,
      ),
      child: ListTile(
        onTap: onTap,
        leading: Image.asset(leadingImageAsset),
        title: Text(
          title,
          style:  TextStyle(
            fontFamily: 'Montserrat',
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
