import 'package:flutter/material.dart';
import 'package:oneloccase/screens/login_page.dart';
import 'package:oneloccase/screens/register_page.dart';

class SonrakiSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 22,
            top: 100,
            height: 150,
            width: 150,
            child: Image.asset('assets/onelocbusiness_logo.png'),
          ),
          Positioned(
            top: 275,
            left: 20,
            child: ortaYaziAlani(),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                yeniHesapOlusturButonu(context),
                SizedBox(height: 15),
                girisYapButonu(context),
                SizedBox(height: 30),
                hizmetSartlariAlani(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget hizmetSartlariAlani() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.white, 
          fontSize: 10,
        ),
        children: [
          TextSpan(
              text: 'Oneloc’un mobil uygulamasına giriş yapan kullanıcılar '),
          TextSpan(
            text: 'Gizlilik\nPolitikası’na',
            style: TextStyle(
              decoration: TextDecoration.underline, 
            ),
          ),
          TextSpan(text: ' ve '),
          TextSpan(
            text: 'Şartlar ve Koşullar’a',
            style: TextStyle(
              decoration: TextDecoration.underline, 
            ),
          ),
          TextSpan(text: ' tabidir.'),
        ],
      ),
    );
  }

  TextButton girisYapButonu(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => girisYapSayfasi()),
        );
      },
      child: Text(
        'Giriş yap',
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  ElevatedButton yeniHesapOlusturButonu(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kayitOlSayfasi()),
        );
      },
      child: Container(
        width: 360,
        height: 55,
        alignment: Alignment.center,
        child: Text(
          'Yeni hesap oluştur',
          style: TextStyle(
              color: Colors.blue, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget ortaYaziAlani() {
    return RichText(
      textAlign: TextAlign.left, 
      text: TextSpan(
        style: TextStyle(
            fontFamily: 'Roboto', 
            color: Colors.white, 
            fontSize: 30,
            fontWeight: FontWeight.w500 
            ),
        children: [
          TextSpan(text: 'Müşterilerinize\n'),
          TextSpan(
            text: 'mekanınızla',
            style: TextStyle(
              color: Colors.orange
                  .shade300, 
            ),
          ),
          TextSpan(text: ' daha\nkolay erişin.'),
        ],
      ),
    );
  }
}
