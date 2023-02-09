import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class cvApp extends StatelessWidget {
  const cvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Resume", style: GoogleFonts.acme(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              child: Text(
                  "Over 2+ month of experience and web development and 1+ weeks of experience in mobile applications development", style: GoogleFonts.montserrat() ,),
            ),
            _bulidTitle("Skills"),
            SizedBox(
              height: 10.0,
            ),
            _bulidSkillRow("css", 0.75),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("html", 0.9),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("javascript", 0.7),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("Java", 0.9),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("Python", 0.5),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("Php", 0.6),
            SizedBox(
              height: 5.0,
            ),
            _bulidSkillRow("Mysql", 0.7),
            SizedBox(
              height: 30.0,
            ),
            _bulidTitle("Experience"),
            _bulidExperienceRow(
                company: "Politeknik Gajah Tunggal",
                position: "Training Full Stack Developer",
                duration: "2022 - 2023"),
            _bulidExperienceRow(
                company: "PPSDM Migas Cepu",
                position: "Internship PLC Programmer",
                duration: "2021 - 2021"),
            SizedBox(
              height: 20.0,
            ),
            _bulidTitle("Education"),
            _bulidExperienceRow(
                company: "Diponegoro University",
                position: "D3 Electronics and Intrumentations",
                duration: "2018 - 2021"),
            _bulidExperienceRow(
                company: "SHS 2 Kebumen",
                position: "Ilmu Pengetahuan Alam",
                duration: "2015 - 2018"),
            SizedBox(
              height: 20.0,
            ),
            _bulidTitle("Contact"),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 32.0,
                ),
                Icon(
                  Icons.mail,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "alittafisca@gmail.com",
                  style: GoogleFonts.montserrat(fontSize: 16.0),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 32.0,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "+62 878 2848 5181",
                  style: GoogleFonts.montserrat(fontSize: 16.0),
                )
              ],
            ),
            _bulidSocialRow(),
            SizedBox(
              height: 20.0,
            )
          ],
        )),
      ),
    );
  }

  Row _bulidSocialRow() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 28.0,
        ),
        IconButton(
          onPressed: () {
            _launchUrl(
                "https://id.linkedin.com/in/arthea-alitta-yona-fisca-b83003220");
          },
          icon: Icon(FontAwesomeIcons.linkedinIn),
          color: Colors.indigo,
        ),
        SizedBox(
          width: 5.0,
        ),
        IconButton(
          onPressed: () {
            _launchUrl("https://github.com/artheafisca");
          },
          icon: Icon(FontAwesomeIcons.github),
          color: Colors.indigo,
        ),
        SizedBox(
          width: 5.0,
        ),
        IconButton(
          onPressed: () {
            _launchUrl("https://wa.me/+6287828485181");
          },
          icon: Icon(FontAwesomeIcons.whatsapp),
          color: Colors.green,
        ),
        SizedBox(
          width: 5.0,
        ),
        IconButton(
          onPressed: () {
            _launchUrl("https://mailto:alittafisca@gmail.com");
          },
          icon: Icon(Icons.mail),
          color: Colors.red,
        ),
      ],
    );
  }

  void _launchUrl(String _url) async {
    final Uri _uri = Uri.parse(_url);
    await launchUrl(_uri, mode: LaunchMode.externalApplication);
  }

  ListTile _bulidExperienceRow(
      {String? company, String? position, String? duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          FontAwesomeIcons.solidCircle,
          size: 12.0,
          color: Colors.black54,
        ),
      ),
      title: Text(
        company!,
        style: GoogleFonts.montserrat(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$position ($duration)", style: GoogleFonts.montserrat(),),
    );
  }

  Row _bulidSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 16.0,
        ),
        Expanded(
            flex: 2,
            child: Text(
              skill.toUpperCase(),
              textAlign: TextAlign.right,
              style: GoogleFonts.montserrat(),
            )),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
            flex: 5,
            child: LinearProgressIndicator(
              value: level,
            )),
        SizedBox(
          width: 16.0,
        ),
      ],
    );
  }

  Widget _bulidTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: GoogleFonts.montserrat(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Container(
          width: 80.0,
          height: 70,
          child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                  radius: 32, backgroundImage: AssetImage("images/thea.jpg"))),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Arthea Alitta Yona Fisca",
              style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Full Stack Developer", style: GoogleFonts.montserrat(),),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.mapPin,
                  color: Colors.black54,
                  size: 12.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Tangerang, Banten",
                  style: GoogleFonts.montserrat(color: Colors.black54),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
