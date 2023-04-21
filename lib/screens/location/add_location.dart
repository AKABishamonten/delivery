import 'package:delivery/providers/checkout_provider.dart';
import 'package:delivery/screens/location/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutProvider checkoutProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text("Add New Location"),
      ),
      bottomNavigationBar: Container(
          height: 48,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
              )
            ]
          ),
          child: MaterialButton(
            child: Text(
              "Add Address",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.orangeAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              checkoutProvider.validator(context);
            },
          )
          ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            CustomTextField(
              labText: "ชื่อ",
              controller: checkoutProvider.firstName,
            ),
            CustomTextField(
              labText: "นามสกุล",
              controller: checkoutProvider.lastName,
            ),
            CustomTextField(
              labText: "เบอร์โทรศัพท์",
              controller: checkoutProvider.mobileNo,
            ),
            CustomTextField(
              labText: "บ้านเลขที่",
              controller: checkoutProvider.houseNo,
            ),
            CustomTextField(
              labText: "ตำบล",
              controller: checkoutProvider.subArea,
            ),
            CustomTextField(
              labText: "อำเภอ",
              controller: checkoutProvider.area,
            ),
            CustomTextField(
              labText: "จังหวัด",
              controller: checkoutProvider.province,
            ),
            CustomTextField(
              labText: "เลขไปรษณี",
              controller: checkoutProvider.postalNo,
            ),
          ],
        ),
      ),
    );
  }
}
