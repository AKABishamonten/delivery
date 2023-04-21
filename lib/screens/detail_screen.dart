import 'package:delivery/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final String productDetail;
  final String productImage;
  final String productName;
  final int productPrice;
  final String productType;

  const DetailScreen({
    Key? key,
    required this.productDetail,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.productType,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    ProductProvider provider = Provider.of<ProductProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 450,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224),
                image: DecorationImage(
                    image: NetworkImage(widget.productImage),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/MainScreen");
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                          size: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productName,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      widget.productType,
                      style:
                          TextStyle(fontSize: 24, color: Colors.black54),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (quantity > 1) quantity--;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            '$quantity',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${widget.productPrice * quantity}",
                        style: TextStyle(
                                fontSize: 28,
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold),
                          ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.productDetail,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          provider.addToCart(
                            productImage: widget.productImage,
                            productName: widget.productName,
                            productPrice: widget.productPrice,
                            quantity: quantity,
                          );
                          
                        },
                        child: Container(
                          width: 350,
                          padding: EdgeInsets.symmetric(
                              vertical: 18, horizontal: 70),
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.cartPlus,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
