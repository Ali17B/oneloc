import 'package:flutter/material.dart';

class reviewPage extends StatefulWidget {
  const reviewPage({super.key});

  @override
  State<reviewPage> createState() => _reviewPageState();
}

class _reviewPageState extends State<reviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 46, 45, 45),
          title: Image.asset("assets/oneloc.png", width: 40),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 65),
              Image.asset(
                "assets/onelocimg_vector.png",
                width: 170,
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                "Bilgilerin İnceleniyor",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Oneloc ekibi vermiş olduğun bilgileri inceliyor. \n Onaylandıktan sonra bir bildirim alacaksın ve hesabını\n kullanmaya başlatabileceksin.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 61,
                width: 385,
                child: cikisYapButton(),
              ),
              SizedBox(
                height: 10,
              ),
              bilgilerimiSilButton()
            ],
          ),
        ));
  }

  TextButton bilgilerimiSilButton() {
    return TextButton(
                onPressed: () {},
                child: Text(
                  "Vazgeçtim, bilgilerimi tamamen sil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ));
  }

  ElevatedButton cikisYapButton() {
    return ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Çıkış yap",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 240, 41, 26))));
  }
}
