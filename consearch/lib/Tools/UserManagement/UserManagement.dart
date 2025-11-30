import 'package:consearch/Models/AppUser.dart';

class UserManagement{
  AppUser? activeUser;

  static UserManagement? instance;

  static UserManagement getInstance(){
    instance ??= UserManagement();
    return instance!;
  }

  void setActiveUser(AppUser user){
    activeUser = user;
  }
}