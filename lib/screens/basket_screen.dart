import 'package:delivery/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {

  @override
  Widget cartItem({
    required String productImage,
    required String productName,
    required int productPrice,
    required onTap,
    required int quantity,
  }) {
    return Column(
      children: [
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Radio(
                value: "",
                groupValue: "", 
                activeColor: Colors.orangeAccent,
                onChanged: (index) {},
              ),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image(image: NetworkImage(productImage),)
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 185,
                      child: Text(
                        productName, 
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
                    ),
                    Text('\฿$productPrice', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(FontAwesomeIcons.trash, color: Colors.redAccent,),
                      onPressed: onTap,
                      ),
                    Text('x $quantity', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                  ]
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    ProductProvider provider = Provider.of<ProductProvider>(context);
    int total = provider.totalprice();
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 65,
        decoration: BoxDecoration(
            color: Colors.orangeAccent, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\฿ $total",
              style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
            ),
            Text(
              "Check Out",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      
      body: ListView.builder(
        itemCount: provider.cartList.length,
        itemBuilder: (ctx, index) {
          provider.getDeleteIndex(index);
          return cartItem(
            onTap: (){
              provider.delete(index);
            },
            productImage: provider.cartList[index].productImage,
            productName: provider.cartList[index].productName,
            productPrice: provider.cartList[index].productPrice,
            quantity: provider.cartList[index].quantity,
          );
        },
      ),
    );
  }
}