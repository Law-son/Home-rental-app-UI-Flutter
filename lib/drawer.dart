// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:fashionhub/constants.dart';
import 'package:fashionhub/home_screen/description_page.dart';
import 'package:fashionhub/home_screen/home_screen.dart';
import 'package:fashionhub/my_flutter_app_icons.dart';
import 'package:fashionhub/providers/tab_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _advancedDrawerController = AdvancedDrawerController();
  var myHome;
  var myProfile;
  var myNearby;
  var myBookmark;
  var myNotification;
  var myMessage;
  var mySettings;
  var myHelp;

  final locationPin = 'assets/images/location_pin.png';
  final locationPin2 = 'assets/images/location_pin2.png';

  @override
  Widget build(BuildContext context) {
    myHome = Provider.of<MyTab>(context).homeSelected;
    myProfile = Provider.of<MyTab>(context).profileSelected;
    myNearby = Provider.of<MyTab>(context).nearbySelected;
    myBookmark = Provider.of<MyTab>(context).bookmarkSelected;
    myNotification = Provider.of<MyTab>(context).notificationSelected;
    myMessage = Provider.of<MyTab>(context).messageSelected;
    mySettings = Provider.of<MyTab>(context).settingsSelected;
    myHelp = Provider.of<MyTab>(context).helpSelected;

    return AdvancedDrawer(
        backdrop: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: Color.fromRGBO(10, 142, 217, 1)
              // gradient: LinearGradient(
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              //   colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
              // ),
              ),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        openScale: 0.85,
        openRatio: 0.55,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        drawer: SafeArea(
          child: ListTileTheme(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 48),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myHome ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectHome(),
                    leading: Icon(
                      MyFlutterApp.home,
                      color: myHome ? mytheme : Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        color: myHome ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myProfile ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectProfile(),
                    leading: Icon(
                      MyFlutterApp.personOutline,
                      color: myProfile ? mytheme : Colors.white,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        color: myProfile ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myNearby ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectNearby(),
                    leading: myNearby ? Image(image: AssetImage(locationPin2), width: 22.5, height: 22.5,) : Image(image: AssetImage(locationPin), width: 22.5, height: 22.5,),
                    // leading: Icon(
                    //   Icons.location_pin,
                    //   color: myNearby ? mytheme : Colors.white,
                    // ),
                    title: Text(
                      'Nearby',
                      style: TextStyle(
                        color: myNearby ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Divider(color: Colors.white, thickness: 1.2),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: myBookmark ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectBookmark(),
                    leading: Icon(
                      Icons.bookmark_outline,
                      color: myBookmark ? mytheme : Colors.white,
                    ),
                    title: Text(
                      'Bookmark',
                      style: TextStyle(
                        color: myBookmark ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myNotification ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectNotification(),
                    leading: Badge(
                        backgroundColor: Colors.red,
                        alignment: AlignmentDirectional.topEnd,
                        child: Icon(
                          MyFlutterApp.notification,
                          size: 21.5,
                          color: myNotification ? mytheme : Colors.white,
                        )),
                    title: Text(
                      'Notification',
                      style: TextStyle(
                        color: myNotification ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myMessage ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectMessage(),
                    leading: Badge(
                        backgroundColor: Colors.red,
                        alignment: AlignmentDirectional.topEnd,
                        child: Icon(
                          MyFlutterApp.messagesOutline,
                          size: 18.5,
                          color: myMessage ? mytheme : Colors.white,
                        )),
                    title: Text(
                      'Message',
                      style: TextStyle(
                        color: myMessage ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Divider(color: Colors.white, thickness: 1.2),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: mySettings ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectSettings(),
                    leading: Icon(
                      Icons.settings_outlined,
                      color: mySettings ? mytheme : Colors.white,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                        color: mySettings ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: myHelp ? Colors.white : Colors.transparent,
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () => context.read<MyTab>().selectHelp(),
                    leading: Icon(
                      Icons.help_outline,
                      size: 21.5,
                      color: myHelp ? mytheme : Colors.white,
                    ),
                    title: Text(
                      'Help',
                      style: TextStyle(
                        color: myHelp ? mytheme : Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50))),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.power_settings_new_outlined,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
        child: const HomeScreen());
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
