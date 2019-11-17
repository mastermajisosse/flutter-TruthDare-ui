class Profilemodel {
  String firstname;
  String lastname;
  String gender;

  Profilemodel({this.firstname, this.gender, this.lastname});

  Profilemodel fromJson(Map<String, dynamic> json) {
    return Profilemodel(
        firstname: json['firstname'],
        lastname: json['lastname'],
        gender: json['gender']);
  }
}
