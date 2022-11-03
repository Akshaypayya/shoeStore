import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shoestore/models/Product.dart';


  Future<void> readData() async{
    var endPoint = Uri.parse(
        "https://theshoestore-993ce-default-rtdb.firebaseio.com/"+"register.json");

    var response = await http.get(endPoint);
    print(response.statusCode);
    var body = jsonDecode(response.body);

    Product product = Product.fromJson(body);

    return Product;
  }
