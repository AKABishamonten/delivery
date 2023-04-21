import 'package:delivery/models/address_model.dart';
import 'package:delivery/providers/checkout_provider.dart';
import 'package:delivery/screens/payment/payment.dart';
import 'package:delivery/widgets/single_delivery_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class Location extends StatefulWidget {

  Location({
    Key? key,
  }) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late AddressModel value;
  @override
  Widget build(BuildContext context) {
    CheckoutProvider AdressProvider = Provider.of(context);
    AdressProvider.getAddressData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Location"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.pushNamed(context, "/AddLocation");
        },
      ),
      bottomNavigationBar: Container(
          height: 48,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: MaterialButton(
            child: AdressProvider.getAddressList.isEmpty
                ? Text(
                    "Add New Address",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                : Text(
                    "Payment Summary",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
            color: Colors.orangeAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              AdressProvider.getAddressList.isEmpty
                  ? Navigator.pushNamed(context, "/AddLocation")
                  : Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentScreen(addressList: value)));
            },
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text(
              "Delivery To",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            leading: Image.asset(
              "images/location.png",
              height: 40,
            ),
          ),
          Divider(
            height: 1,
          ),
          AdressProvider.getAddressList.isEmpty
          ? Container(
            child: Center(
              child: Text("No Data")),
          )
          : Column(
            children: AdressProvider.getAddressList
            .map((e){
              setState(() {
                    value  = e;
                    });
              return SingleDeliveryItem(
                      address: "บ้านเลขที่ : ${e.houseNo}, ตำบล : ${e.subArea}, อำเภอ : ${e.area}, จังหวัด : ${e.province}, รหัสไปรษณี : ${e.postalNo}",
                      number: "เบอร์โทรศัพท์ : ${e.mobileNo}",
                      title: "${e.firstName} ${e.lastName}",
                    );
            }).toList(),
          )
        ],
      ),
    );
  }
}
