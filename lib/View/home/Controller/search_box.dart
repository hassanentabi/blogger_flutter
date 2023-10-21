import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.01),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              //color: Colors.white,
              child: TextField(
                onChanged: (value) {
                  // Handle the onChanged event
                },
                decoration: const InputDecoration(
                  //labelText: 'Search',
                  hintText: 'Search ',
                  border: InputBorder.none,
                ),

              ),
            ),
          ),
          // Add the icon on the right side

          Padding(
            padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.04),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.12,
              height: MediaQuery.sizeOf(context).width * 0.12,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {
                    // Add your button click logic here
                  },
                  icon: Image.asset('images/Filter.png'),

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
