import 'package:oneloccase/model/kayitVeGiris.dart';
import 'dart:convert'; 
import 'package:http/http.dart' as http; 


Future<String> loginUser(kullaniciGiris request) async {
  final url = 'https://case.onelocapp.com/api/auth/login';


  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: json.encode(request.toJson()),
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to login user');
  }

  // Token'ı döndürün veya uygun şekilde saklayın
  return response.body;
}
