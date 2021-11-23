import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
class DBManager{
  static Database? _database;
  static final DBManager db = DBManager._();
  DBManager._();


 Future<Database?> get database async{
    if(_database!=null)return _database;
    _database = await initDB();
    return _database;
   
  }


  initDB()async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentDirectory.path,'ecommerce.db');
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version)async{
        await db.execute("CREATE TABLE Product(id INTEGER, brand TEXT, name TEXT, price REAL, quantity INTEGER, image TEXT)");
      }
    );

  }

}