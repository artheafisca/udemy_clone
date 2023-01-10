import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.shoppingCartOutline))
        ],
        backgroundColor: Colors.black,
        title: Text(
          "Account",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Arthea Alitta Yona Fisca",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            "alittafisca@gmail.com",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Become an instructor",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Video Preference",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Download Option",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Video Playback Options",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Text(
                "Account Settings",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Account Security",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Email Notification Preferences",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Learning Remainders",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Text(
                "Support",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "About Udemy",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "About Udemy for business",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "FAQs",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Share the udemy app",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Text(
                "Diagnostics",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  "Status",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Out",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Text(
                    "Udemy Clone v1.0.0",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
