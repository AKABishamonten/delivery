class AddressModel{
  final String firstName;
  late String lastName;
  late String mobileNo;
  late String houseNo;
  late String subArea;
  late String area;
  late String province;
  late String postalNo;

  AddressModel({
    required this.firstName,
    required this.lastName,
    required this.mobileNo,
    required this.houseNo,
    required this.subArea,
    required this.area,
    required this.province,
    required this.postalNo,
  });
}