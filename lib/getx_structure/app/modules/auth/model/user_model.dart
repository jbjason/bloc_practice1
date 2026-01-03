class UserModel {
  String? name;
  String? email;
  String? token;
  String? userId;
  String? phoneNo;
  String? address;
  String? role;
  String? imageUrl;
  String? gender;
  String? country;
  String? dateOfBirth;

  UserModel({
    required this.name,
    required this.email,
    required this.token,
    required this.userId,
    required this.phoneNo,
    required this.address,
    required this.role,
    required this.imageUrl,
    required this.dateOfBirth,
    required this.gender,
    required this.country,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      userId: json["userId"],
      name: json["name"],
      email: json["email"],
      phoneNo: json["phone_no"],
      address: json["address"],
      token: json["token"],
      role: json['role'],
      imageUrl: json["image"],
      dateOfBirth: json["date_of_birth"],
      gender: json["gender"],
      country: json["country"],
      );
  Map<dynamic, dynamic> toJson() => {
        "name": name,
        "email": email,
        "token": token,
        "userId": userId,
        "phone_no": phoneNo,
        "address": address,
        "gender": gender,
        "country": country,
        "role": role,
        "image": imageUrl,
        "date_of_birth": dateOfBirth
      };
}
