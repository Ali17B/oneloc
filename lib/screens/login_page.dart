import 'package:flutter/material.dart';

class girisYapSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 59, 59, 59),
        title: Text(
          'Giriş yap',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75, left: 0),
              child: yazialani(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              child: inputlar(context),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 230, right: 10),
                child: sifremiUnuttumButton(context)),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: girisYapButton(context)),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: yeniHesapOlusturButton(context)),
            Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: hizmetSartlariAlani())
          ],
        ),
      ),
    );
  }

  Widget yazialani() {
    return RichText(
      textAlign: TextAlign.left, 
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Roboto', 
          color: Colors.white, 
          fontSize: 25, 
        ),
        children: [
          TextSpan(text: 'En iyi deneyimlerin merkezi\n'),
          TextSpan(
            text: "Oneloc'a",
          ),
          TextSpan(
              text: ' hoş geldin!',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget inputlar(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: epostaInput(),
            ),
            SizedBox(height: 20),
            sifreInput(),
          ],
        ),
      ),
    );
  }

  TextFormField sifreInput() {
    return TextFormField(
      obscureText: true, 
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[800], 
        hintText: 'Şifre', 
        hintStyle: TextStyle(color: Colors.white38), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), 
          borderSide: BorderSide.none, 
        ),
      ),
      style: TextStyle(color: Colors.white), 
    );
  }

  TextFormField epostaInput() {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[800], 
        hintText: 'E-posta adresi', 
        hintStyle: TextStyle(color: Colors.white38), 
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0), 
          borderSide: BorderSide.none, 
        ),
      ),
      style: TextStyle(color: Colors.white), 
    );
  }

  Widget sifremiUnuttumButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Şifremi unuttum butonuna tıklandığında yapilacak islemler
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, 
        children: [
          Text(
            'Şifremi Unuttum',
            style: TextStyle(
              color: Colors.white, 
              fontSize: 16, 
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right_outlined, 
            color: Colors.white, 
          ),
        ],
      ),
    );
  }

  girisYapButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Giriş Yap butonuna tıklandığında
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 39, 142, 226)), 
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), 
          ),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 50, 
        alignment: Alignment.center, 
        child: Text(
          'Giriş Yap',
          style: TextStyle(
              color: Colors.white, 
              fontSize: 16,
              fontWeight: FontWeight.bold 
              ),
        ),
      ),
    );
  }

  Widget yeniHesapOlusturButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Yeni Hesap Oluştur butonuna tıklandığında yapılacaklar
      },
      child: Text(
        'Yeni hesap oluştur',
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16, 
          fontWeight: FontWeight.bold, 
        ),
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
}
