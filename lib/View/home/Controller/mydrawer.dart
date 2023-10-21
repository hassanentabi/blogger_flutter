import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'customlisttile.dart';

class MyDrawer extends StatefulWidget {
  final AdvancedDrawerController advancedDrawerController;

  const MyDrawer({
    super.key,
    required this.advancedDrawerController,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.07,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // start the content vertically
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // start the content horizontally
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/Ellipse.png'),
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * 0.005,
                      ),
                      child: const Text(
                        'James Anderson',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      child: const Text(
                        '@james_andy',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Montserrat',
                          color: Color(0xffC8C8C8),
                        ),
                      ),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.sizeOf(context).height * 0.04,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.sizeOf(context).height * 0.01,
                                ),
                                child: const Text(
                                  '240',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text(
                                'Followers',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.sizeOf(context).height * 0.01,
                              ),
                              child: const Text(
                                '14',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.sizeOf(context).height * 0.03,
                  bottom: MediaQuery.sizeOf(context).height * 0.03,
                ),
                child: Divider(
                  color: Colors.white,
                  indent: MediaQuery.of(context).size.width * 0.08,
                  endIndent: MediaQuery.of(context).size.width * 0.09,
                ),
              ),

              CustomListTile(
                leadingImageAsset: 'images/Plus.png',
                title: 'Add new article',
                fontSize: 16.0,
                onTap: () {
                  // Add your onTap logic here
                },
              ),

              CustomListTile(
                leadingImageAsset: 'images/Document.png',
                title: 'Your articles',
                fontSize: 14.0,
                onTap: () {
                  // Add your onTap logic here
                },
              ),

              CustomListTile(
                leadingImageAsset: 'images/Activity.png',
                title: 'Your activity',
                fontSize: 14.0,
                onTap: () {
                  // Add your onTap logic here
                },
              ),

              CustomListTile(
                leadingImageAsset: 'images/Ticket.png',
                title: 'Your subscriptions',
                fontSize: 14.0,
                onTap: () {
                  // Add your onTap logic here
                },
              ),

              CustomListTile(
                leadingImageAsset: 'images/Logout.png',
                fontSize: 14.0,
                title: 'Log out',
                onTap: () {
                  // Add your onTap logic here
                  //AdvancedDrawerController().toggleDrawer();
                  //exit(0);
                },
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.04,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                widthFactor: 5.5, // 10% width of the parent

                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        widget.advancedDrawerController.hideDrawer();
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
              )

              // const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
