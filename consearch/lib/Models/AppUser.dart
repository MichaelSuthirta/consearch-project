class AppUser{
  String id, username, email;

  AppUser({
    required this.id,
    required this.username,
    required this.email,
  });

  factory AppUser.create(String ID, Map<String, dynamic> map){
    return AppUser(
        id: ID,
        username: map["username"],
        email: map["email"]
    );
  }
}