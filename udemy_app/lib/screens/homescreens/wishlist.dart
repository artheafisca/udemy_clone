import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline, color: Colors.white),
            onPressed: () {
              print('Basket Window');
            },
          ),
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Wishlist',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 400.0,
                width: 400.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(EvaIcons.shakeOutline, color: Colors.white),
                        radius: 50.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 8.0),
                      child: Text('Want to save something for later?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text('Your wishlist shall go here',
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 20.0)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 8.0),
                child: Text(
                  'Browse categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                  leading: Icon(FontAwesomeIcons.code, color: Colors.white),
                  title: Text('Development',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.business, color: Colors.white),
                  title: Text('Business',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.payment, color: Colors.white),
                  title: Text('Finance & Accounting',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(FontAwesomeIcons.desktop, color: Colors.white),
                  title: Text('TI & Software',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(EvaIcons.browserOutline, color: Colors.white),
                  title: Text('Office Productivity',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(EvaIcons.person, color: Colors.white),
                  title: Text('Personal Development',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.design_services, color: Colors.white),
                  title: Text('Design',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.radar, color: Colors.white),
                  title: Text('Marketing',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.skateboarding, color: Colors.white),
                  title: Text('Lifestyle',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.camera_alt, color: Colors.white),
                  title: Text('Photography & Videos',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading:
                      Icon(FontAwesomeIcons.heartPulse, color: Colors.white),
                  title: Text('Health & Fitness',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(EvaIcons.music, color: Colors.white),
                  title: Text('Music',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  leading: Icon(Icons.library_books, color: Colors.white),
                  title: Text('Teaching & Academic',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
            ],
          ),
        ),
      ),
    );
  }
}