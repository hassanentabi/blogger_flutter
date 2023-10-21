import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import '../../post/view/post_screen.dart';
import '../Controller/dot_bottom_navigationBar.dart';
import '../Controller/filter.dart';
import '../Controller/mydrawer.dart';
import '../Controller/post.dart';
import '../Controller/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          // background color from figma -> #181717
          color: const Color.fromARGB(255, 24, 23, 23),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(39)),
        ),
        drawer: MyDrawer(
          advancedDrawerController: _advancedDrawerController,
        ),
        child: Scaffold(
          //--------------------
          //  appBar with change icon from menu to close
          appBar: AppBar(
            backgroundColor: const Color(0xffEFEFEF),
            bottomOpacity: 0.0,
            elevation: 0.0,
            leading: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02),
              child: IconButton(
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    return const AnimatedSwitcher(
                      duration: Duration(milliseconds: 250),
                      child: Image(
                        image: AssetImage('images/menu-left.png'),
                        // image: (value.visible
                        //     ? const AssetImage('images/plus.png')
                        //     : const AssetImage('images/menu-left.png')),
                        // key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height * 0.03),
                child: IconButton(
                  icon: Image.asset('images/Notification.png'),
                  onPressed: () {
                    // go to Notification page
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const PostScreen(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
          //--------------------------------
          // body handel your body hear
          body: SingleChildScrollView(
            child: Container(
              color: const Color(0xffEFEFEF),
              child: const Column(
                children: [
                  SearchBox(),
                 // Filter(),

                  Post(
                    title: 'Please Start Writing Better Git Commits',
                    details:
                        '''  I recently read a helpful article on Hashnode by Simon Egersand titled "Write Git Commit Messages Your Colleagues Will Love," and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.
''',
                    image: "images/avatar1.png",
                    name: "Travis Aaron Wagner",
                    data: 'Jul 29, 2022',
                    readTime: 4,
                  ),
                  Post(
                    title: 'About criticism                                  ',
                    details:
                        '''  Everybody is a critic. Every developer has both been on the receiving and the giving end of criticism. It is a vital part of our job, be it as code review, comments on social networks like this one or during a retrospective. So let us have a look at both sides of criticism:''',
                    image: "images/avatar2.png",
                    name: "Alex Lohr",
                    data: 'Jul 20, 2022',
                    readTime: 3,
                  ),
                  Post(
                    title: 'Please Start Writing Better Git Commits',
                    details:
                        '''  I recently read a helpful article on Hashnode by Simon Egersand titled "Write Git Commit Messages Your Colleagues Will Love," and it inspired me to dive a little deeper into understanding what makes a Git commit good or bad.
''',
                    image: "images/avatar1.png",
                    name: "Travis Aaron Wagner",
                    data: 'Jul 29, 2022',
                    readTime: 4,
                  ),

                ],
              ),
            ),
          ),
          extendBody: true, //<------to make to show body behind the navbar,
          bottomNavigationBar: DotBottomNavigationBar(),
        ),
      ),
    );
  }
}
