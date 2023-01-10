

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.white,
        ),
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
          'Search',
          style: TextStyle(
              color: Colors.white, fontSize: 15.0, fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 8.0),
                child: Text(
                  'Most popular searches',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          'python',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          'java',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.white)),
                      child: Center(
                        child: Text(
                          'excel',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 70.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: Text(
                        'sql',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            width: 100.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'javascript',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 70.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'aws',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 150.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Text(
                              'digital marketing',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            width: 90.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'power bi',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 70.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'react',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 50.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Text(
                                'c#',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 110.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Text(
                              'photoshop',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 50.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text(
                            'sap',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 10.0, left: 8.0, top: 30.0),
                child: Text(
                  'Browse categories',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(FontAwesomeIcons.code, color: Colors.white),
                  title: Text('Development',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.business, color: Colors.white),
                  title: Text('Business',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.payment, color: Colors.white),
                  title: Text('Finance & Accounting',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(FontAwesomeIcons.desktop, color: Colors.white),
                  title: Text('TI & Software',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(EvaIcons.browserOutline, color: Colors.white),
                  title: Text('Office Productivity',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(EvaIcons.person, color: Colors.white),
                  title: Text('Personal Development',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.design_services, color: Colors.white),
                  title: Text('Design',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.radar, color: Colors.white),
                  title: Text('Marketing',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.skateboarding, color: Colors.white),
                  title: Text('Lifestyle',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(Icons.camera_alt, color: Colors.white),
                  title: Text('Photography & Videos',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading:
                      Icon(FontAwesomeIcons.heartPulse, color: Colors.white),
                  title: Text('Health & Fitness',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  leading: Icon(EvaIcons.music, color: Colors.white),
                  title: Text('Music',
                      style: TextStyle(color: Colors.white, fontSize: 16.0))),
              ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
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