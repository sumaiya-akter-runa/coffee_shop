class Note {
  String? id;
  String name;

  String phone;
  String email;
  String location;


  Note({
    this.id,
    required this.name,

    required this.phone,
    required this.email,
    required this.location,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,

      'phone': phone,
      'email': email,
      'location': location,
    };
  }

  static Note fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      name: json['name'],

      phone: json['phone'],
      email: json['email'],
      location: json['location'],
    );
  }
}