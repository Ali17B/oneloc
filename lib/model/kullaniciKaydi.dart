import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:oneloccase/model/kayitVeGiris.dart';

import 'kullaniciBilgileri.dart';

Future<KullaniciBilgileri> registerUser(kullaniciKayit request) async {
  final url = 'https://case.onelocapp.com/api/auth/register';

  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json'},
    body: json.encode(request.toJson()),
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to register user');
  }

  return KullaniciBilgileri.fromJson(json.decode(response.body));
}
