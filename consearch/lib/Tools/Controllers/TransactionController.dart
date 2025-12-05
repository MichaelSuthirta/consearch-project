import 'package:consearch/Tools/Handlers/TransactionHandler.dart';

class TransactionController{
  static TransactionController? instance;

  final TransactionHandler handler = TransactionHandler();

  static TransactionController getInstance(){
    instance ??= TransactionController();
    return instance!;
  }
}