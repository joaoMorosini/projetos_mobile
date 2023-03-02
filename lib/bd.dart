import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class BD {
  static late BD _ajudaVaca;
  static late Database _database;

  BD._createInstance();

  factory BD() {
    _ajudaVaca = BD._createInstance();

    return _ajudaVaca;
  }

  Future<Database> get database async {
    _database = await inicializaBanco();

    return _database;
  }
  Future<Database> inicializaBanco() async {
    Directory pasta = await getApplicationDocumentsDirectory();
    String caminho = pasta.path + 'bd.bd';

    var bancodedados =
    await openDatabase(caminho, version: 1, onCreate: criaTabelas);

    return bancodedados;
  }
  void criaTabelas(Database db, int versao) async {


  }
}
