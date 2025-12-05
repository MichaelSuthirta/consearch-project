import 'package:consearch/DatabaseConnectors/UserDBConnector.dart';
import 'package:consearch/Models/AppUser.dart';

class UserHandler{
  final UserDBConnector db = UserDBConnector.getInstance();

  Future<AppUser> registerUser(String username, String email, String password) async {
    return await db.addUser(username, email, password);
  }

  Future<AppUser> loginUser(String email, String password) async{
    return await db.login(email, password);
  }
}