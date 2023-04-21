import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery/models/address_model.dart';
import 'package:delivery/providers/product_provider.dart';
import 'package:delivery/screens/payment/dummi_order.dart/order2_item.dart';
import 'package:delivery/screens/payment/dummi_order.dart/order_item.dart';
import 'package:delivery/widgets/single_delivery_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/quickalert.dart';

class PaymentScreen extends StatefulWidget {

  final AddressModel addressList;


  PaymentScreen ({ Key? key, required this.addressList }) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  void showAlert(QuickAlertType success){
    QuickAlert.show(context: context, type: QuickAlertType.success);
  }


  @override
  Widget build(BuildContext context) {
    ProductProvider productprovider = Provider.of<ProductProvider>(context);
    int total = productprovider.totalprice();
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
        backgroundColor: Colors.orangeAccent,
      ),
      bottomNavigationBar: ListTile(
        title: Text("Total Aount", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        subtitle: Text("\฿ ${total - 1000}", style: TextStyle(fontSize: 20,color: Colors.green[900]),),
        trailing: Container(
          height: 50,
          width: 160,
          child: MaterialButton(
            child: Text("Place Order", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),) ,
            color: Colors.orangeAccent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){
              showAlert(QuickAlertType.success);
              
            },
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SingleDeliveryItem(
                      address: "บ้านเลขที่ : ${widget.addressList.houseNo}, ตำบล : ${widget.addressList.subArea}, อำเภอ : ${widget.addressList.area}, จังหวัด : ${widget.addressList.province}, รหัสไปรษณี : ${widget.addressList.postalNo}",
                      number: "เบอร์โทรศัพท์ : ${widget.addressList.mobileNo}",
                      title: "${widget.addressList.firstName} ${widget.addressList.lastName}",
                    ),
                Divider(),
                ExpansionTile(
                  title: Text('รายการสินค้า', style: TextStyle(fontWeight: FontWeight.bold),),
                  children: [
                    OrderItem(),
                    SecOrderItem()
                  ],
                ),
                Divider(),
                ListTile(
                  minVerticalPadding: 5,
                  leading: Text('ราคารวม', style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("\฿ ${total}", style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  minVerticalPadding: 5,
                  leading: Text('ค่าส่งสินค้า'),
                  trailing: Text("\฿ 0"),
                ),
                ListTile(
                  minVerticalPadding: 5,
                  leading: Text('ส่วนลด'),
                  trailing: Text("\฿ 1000"),
                ),
                Divider(),
                ListTile(
                  leading: Text('วิธีการชำระ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                ListTile(
                  minVerticalPadding: 5,
                  leading: Text('ชำระเงินปลายทาง'),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}