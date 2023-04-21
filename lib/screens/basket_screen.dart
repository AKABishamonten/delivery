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
              color: Colors.white, borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 2),
                )
              ]
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
                  child: Image(
                    image: NetworkImage(productImage),
                  )),
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
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent),
                      ),
                    ),
                    Text(
                      '\฿$productPrice',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
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
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.redAccent,
                        ),
                        onPressed: onTap,
                      ),
                      Text(
                        'x $quantity',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ]),
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
      bottomNavigationBar: ListTile(
        title: Text("Total Aount", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        subtitle: Text("\฿ $total", style: TextStyle(fontSize: 20,color: Colors.green[900]),),
        trailing: Container(
          height: 50,
          width: 160,
          child: MaterialButton(
            child: Text("Submit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),) ,
            color: Colors.orangeAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){
              Navigator.pushNamed(context, "/Location");
            },
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: provider.cartList.length,
        itemBuilder: (ctx, index) {
          provider.getDeleteIndex(index);
          return cartItem(
            onTap: () {
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
