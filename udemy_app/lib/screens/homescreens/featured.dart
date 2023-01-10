import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product {
  String productTitle;
  String productName;
  int productPrice;
  String productRate;
  int productEnrol;
  String productImage;

  Product(
      {required this.productTitle,
      required this.productName,
      required this.productPrice,
      required this.productRate,
      required this.productEnrol,
      this.productImage = "images/sale.jpg"});
}

// List<Product> productData = [
//   Product(
//       productTitle: "Microsoft Excel",
//       productName: "Hartono",
//       productPrice: 500000,
//       productRate: "5",
//       productEnrol: 1000)
// ];

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  List<Product> productData = [
    Product(
        productTitle: "Kotlin Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "5",
        productImage: "images/kotlin.jpeg",
        productEnrol: 1000),
    Product(
        productTitle: "Dart Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "5",
        productImage: "images/dart.jpg",
        productEnrol: 1000),
    Product(
        productTitle: "Java Programming : beginner to Advanced",
        productName: "Eko Kurniawan Khannedy",
        productPrice: 799000,
        productRate: "5",
        productImage: "images/java.jpg",
        productEnrol: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("images/sale1.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                color: Colors.blueAccent,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Courses now on sale",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        "1 Day Left",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "Featured",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 250,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage(
                                        "${productData[index].productImage}"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              "${productData[index].productTitle}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8),
                          child: Text(
                            "${productData[index].productName}",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  "${productData[index].productRate}",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "(${productData[index].productEnrol})",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              // Icon(
                              //   FontAwesomeIcons.rupiahSign,
                              //   color: Colors.white,
                              // ),
                              Text("Rp. ${productData[index].productPrice}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Best Seller",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                "Top Courses in Development",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 250,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productData.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage(
                                        "${productData[index].productImage}"))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              "${productData[index].productTitle}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8),
                          child: Text(
                            "${productData[index].productName}",
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Icon(
                                EvaIcons.star,
                                color: Colors.yellowAccent,
                                size: 16,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Text(
                                  "${productData[index].productRate}",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "(${productData[index].productEnrol})",
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              // Icon(
                              //   FontAwesomeIcons.rupiahSign,
                              //   color: Colors.white,
                              // ),
                              Text("Rp. ${productData[index].productPrice}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "Best Seller",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(EvaIcons.shoppingCartOutline))
        ],
        backgroundColor: Colors.black,
        title: Text(
          "Featured",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
