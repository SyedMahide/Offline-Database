import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

class DatabaseHelper{

  // Database _db;


  static final _databaseName = 'login.db';
  static final _databaseVersion = 1;
  static final table = 'Demo';
  static final columnEmail = 'Email';
  static final columnName = 'Name';
  var aaaa="";

  /*DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static final _database;
  Future <Database> get database async{

  }*/

  static Future init() async {

    // Construct the path to the app's writable database file:
    var dbDir = await getDatabasesPath();
    print("path "+dbDir);
    var dbPath = path.join(dbDir, "login.db");

// Delete any existing database:
    await deleteDatabase(dbPath);

// Create the writable database file from the bundled demo database file:
    ByteData data = await rootBundle.load("assets/db/demo.db");
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);
    var db = await openDatabase(dbPath);
    return db;
  }

}