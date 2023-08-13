class KullaniciBilgileri {
  final String username;
  final String email;
  final String phoneNumber;
  final String password;

  KullaniciBilgileri(
      {required this.username,
      required this.email,
      required this.phoneNumber,
      required this.password});

  factory KullaniciBilgileri.fromJson(Map<String, dynamic> json) {
    return KullaniciBilgileri(
        username: json['username'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        password: json['password']);
  }
}
