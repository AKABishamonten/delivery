
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery/models/address_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CheckoutProvider with ChangeNotifier{

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController mobileNo = TextEditingController();
  TextEditingController houseNo = TextEditingController();
  TextEditingController subArea = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController province = TextEditingController();
  TextEditingController postalNo = TextEditingController();

  void validator(context)async{
    if (firstName.text.isEmpty){
      Fluttertoast.showToast(msg: "ชื่อยังไม่ได้กรอก");
    }else if (lastName.text.isEmpty){
      Fluttertoast.showToast(msg: "นามสกุลยังไม่ได้กรอก");
    }else if (mobileNo.text.isEmpty){
      Fluttertoast.showToast(msg: "เบอร์โทรศัพท์ยังไม่ได้กรอก");
    }else if (houseNo.text.isEmpty){
      Fluttertoast.showToast(msg: "บ้านเลขที่ยังไม่ได้กรอก");
    }else if (subArea.text.isEmpty){
      Fluttertoast.showToast(msg: "ตำบลยังไม่ได้กรอก");
    }else if (area.text.isEmpty){
      Fluttertoast.showToast(msg: "อำเภอยังไม่ได้กรอก");
    }else if (province.text.isEmpty){
      Fluttertoast.showToast(msg: "จังหวัดยังไม่ได้กรอก");
    }else if (postalNo.text.isEmpty){
      Fluttertoast.showToast(msg: "เลขไปรษณียังไม่ได้กรอก");
    } else {
      await FirebaseFirestore.instance
      .collection("AddDeliverAddress")
      .doc(FirebaseAuth.instance.currentUser?.uid)
      .set({
        "firstName":firstName.text,
        "lastName":lastName.text,
        "mobileNo":mobileNo.text,
        "houseNo":houseNo.text,
        "subArea":subArea.text,
        "area":area.text,
        "province":province.text,
        "postalNo":postalNo.text,
      }).then((value) async {
        await Fluttertoast.showToast(msg: "เพิ่มข้อมูลที่อยู่ของคุณเรียบร้อย");
        Navigator.pop(context);
        notifyListeners();
      });
      notifyListeners();
    }
  }
  List<AddressModel> adressList = [];
  getAddressData() async {
    List<AddressModel> newList = [];
    AddressModel addressModel;
    DocumentSnapshot _db = await FirebaseFirestore.instance
      .collection("AddDeliverAddress")
      .doc(FirebaseAuth.instance.currentUser?.uid).get();
      if(_db.exists){
        addressModel = AddressModel(
          firstName: _db.get("firstName"), 
          lastName: _db.get("lastName"), 
          mobileNo: _db.get("mobileNo"),  
          houseNo: _db.get("houseNo"),  
          subArea: _db.get("subArea"),  
          area: _db.get("area"),  
          province: _db.get("province"), 
          postalNo: _db.get("postalNo"), 
        );
        newList.add(addressModel);
        notifyListeners();
      }
      adressList = newList;
      notifyListeners();
  }
  List<AddressModel> get getAddressList {
    return adressList;
  }
}