import 'package:consearch/Exceptions/EmptyFieldException.dart';
import 'package:consearch/Exceptions/MinimumPassLengthException.dart';
import 'package:consearch/Models/AppUser.dart';
import 'package:consearch/Tools/Handlers/UserHandler.dart';
import 'package:consearch/Tools/UserManagement/UserManagement.dart';

class UserController{
  final UserHandler handler = UserHandler();

  Future<AppUser> registerUser(String username, String email, String password) async{
    if(username.isEmpty || email.isEmpty || password.isEmpty){
      throw new EmptyFieldException();
    }
    else if(password.length < 8){
      throw new MinimumPassLengthException();
    }
    return await handler.registerUser(username, email, password);
  }

  Future<AppUser> loginUser(String email, String password) async{
    if(email.isEmpty || password.isEmpty){
      throw new EmptyFieldException();
    }
    AppUser loggedInUser = await handler.loginUser(email, password);
    UserManagement.getInstance().setActiveUser(loggedInUser);
    return loggedInUser;
  }
}