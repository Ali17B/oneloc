import 'package:flutter/material.dart';
import 'package:oneloccase/model/kayitVeGiris.dart';
import 'package:oneloccase/screens/review_page.dart';
import '../model/kullaniciKaydi.dart';

class kayitOlSayfasi extends StatefulWidget {
  const kayitOlSayfasi({super.key});

  @override
  State<kayitOlSayfasi> createState() => _kayitOlSayfasiState();
}

class _kayitOlSayfasiState extends State<kayitOlSayfasi> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() async {
    final request = kullaniciKayit(
      _usernameController.text,
      _emailController.text,
      _phoneController.text,
      _passwordController.text,
    );

    try {
      await registerUser(request);
      // Kayıt işlemi başarılı
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => reviewPage()));
    } catch (error) {
      // hata işleme
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 46, 45, 45),
        title: Text('Yeni hesap oluştur'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hemen yeni bir hesap oluştur ve en ",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "iyi deneyimi yaşa!",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            kullaniciAdiInput(),
            SizedBox(
              height: 20,
            ),
            epostaInput(),
            Row(
              children: [
                alanKoduInput(),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  width: 280,
                  child: telNoInput(),
                ),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                sifreInput(),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 385,
                    height: 60,
                    child: hesabiOlusturButton(context),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                girisYapButton(),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: hizmetSartlariAlani(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextButton girisYapButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Giriş yap",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  ElevatedButton hesabiOlusturButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _register();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => reviewPage()));
      },
      child: Text(
        "Hesabı Oluştur",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.blueAccent.shade400,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  TextField sifreInput() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(88, 86, 86, 1),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: "Şifre",
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 207, 203, 203),
          fontWeight: FontWeight.bold,
        ),
      ),
      obscureText: true,
      obscuringCharacter: "*",
    );
  }

  TextField telNoInput() {
    return TextField(
        controller: _phoneController,
        decoration: InputDecoration(
            fillColor: Color.fromRGBO(88, 86, 86, 1),
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            hintText: "Telefon numarası",
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 207, 203, 203),
              fontWeight: FontWeight.bold,
            )));
  }

  Container alanKoduInput() {
    return Container(
      width: 100,
      padding: EdgeInsets.only(top: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(88, 86, 86, 1),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/turkey.svg.png',
              width: 30,
              height: 30,
            ),
          ),
          hintText: "+90",
          hintStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        readOnly: true,
      ),
    );
  }

  TextField epostaInput() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
          fillColor: Color.fromRGBO(88, 86, 86, 1),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: "E-posta adresi",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 207, 203, 203),
            fontWeight: FontWeight.bold,
          )),
    );
  }

  TextField kullaniciAdiInput() {
    return TextField(
      controller: _usernameController,
      decoration: InputDecoration(
          fillColor: Color.fromRGBO(88, 86, 86, 1),
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
          hintText: "Kullanıcı adı",
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 207, 203, 203),
            fontWeight: FontWeight.bold,
          )),
    );
  }

  hizmetSartlariAlani() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.white, // Genel metin rengi
          fontSize: 10,
        ),
        children: [
          TextSpan(
              text: 'Oneloc’un mobil uygulamasına giriş yapan kullanıcılar '),
          TextSpan(
            text: 'Gizlilik\nPolitikası’na',
            style: TextStyle(
              decoration: TextDecoration.underline, // Altını çizer
            ),
          ),
          TextSpan(text: ' ve '),
          TextSpan(
            text: 'Şartlar ve Koşullar’a',
            style: TextStyle(
              decoration: TextDecoration.underline, // Altını çizer
            ),
          ),
          TextSpan(text: ' tabidir.'),
        ],
      ),
    );
  }
}
