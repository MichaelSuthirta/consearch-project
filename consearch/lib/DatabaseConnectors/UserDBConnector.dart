import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:consearch/Models/AppUser.dart';

class UserDBConnector{
  static const String COLLECTION_NAME = "users";
  final CollectionReference db = FirebaseFirestore.instance.collection(COLLECTION_NAME);
  final authInstance = FirebaseAuth.instance;

  static UserDBConnector? instance;

  static UserDBConnector getInstance(){
    instance ??= UserDBConnector();
    return instance!;
  }

  Future<AppUser> addUser(String username, String email, String password) async {
    UserCredential credential = await authInstance.
                                createUserWithEmailAndPassword(
                                    email: email,
                                    password: password
                                );
    var ID = credential.user!.uid;

    AppUser user = AppUser(
        id: ID,
        username: username,
        email: email
    );

    db.doc(ID).set({
      "username": username,
      "email": email
    });

    return user;
  }

  Future<AppUser> login(String email, String password) async {
    UserCredential credential = await authInstance.signInWithEmailAndPassword(email: email, password: password);

    var ID = credential.user!.uid;
    var userData = await db.doc(ID).get();
    return AppUser.create(ID, (userData.data() as Map<String, dynamic>));
  }
}