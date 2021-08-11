import 'dart:io';
import 'package:examumar/datas/classmodels.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';


class DataBaseHelper {
  static DataBaseHelper? _dataBaseHelper;
  static Database? _database;

  DataBaseHelper.internel();

  factory DataBaseHelper() {
    if (_dataBaseHelper == null) {
      _dataBaseHelper = DataBaseHelper.internel();
      return _dataBaseHelper!;
    } else {
      return _dataBaseHelper!;
    }
  }

  Future<Database> _getDataBase() async {
    if (_database == null) {
      _database = await _intialDataBase();
      return _database!;
    } else {
      return _database!;
    }
  }

  Future _intialDataBase() async {
    var lock = Lock();
    Database? _db;
    if (_db == null) {
      await lock.synchronized(
        () async {
          if (_db == null) {
            var databasesPath = await getDatabasesPath();
            String path = join(databasesPath, 'image.db');
            print("DB`ning PATHi: " + path.toString());
            var file = File(path);
            if (!await file.exists()) {
              ByteData data = await rootBundle.load(join('assets', 'image.db'));
              List<int> bytes = data.buffer
                  .asInt8List(data.offsetInBytes, data.lengthInBytes);
              await File(path).writeAsBytes(bytes);
            }
            _db = await openDatabase(path);
          }
        },
      );
    }
    return _db;
  }

  void savePicture(Pictures picture) async {
    var dbClient = await _getDataBase();
    await dbClient.insert("imagetable", picture.toMap());
  }

  Future<List<Pictures>> getPictures() async {
    var dbClient = await _getDataBase();
    List<Map> list = await dbClient.query('imagetable');
    print("DB HELPER: " + list.toString());
    List<Pictures> pictures = [];
    for (int i = 0; i < list.length; i++) {
      pictures.add(new Pictures(
          
          picture: list[i]["picture"]));
    }
    return pictures;
  }
}