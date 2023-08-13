class kullaniciKayit {
  final String username;
  final String email;
  final String phoneNumber;
  final String password;

  kullaniciKayit(this.username, this.email, this.phoneNumber, this.password);

  Map<String, dynamic> toJson() => {
        'username': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
      };
}

class kullaniciGiris {
  final String email;
  final String password;

  kullaniciGiris(this.email, this.password);

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
