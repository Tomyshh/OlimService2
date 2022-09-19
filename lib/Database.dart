import 'package:flutter/material.dart';
import 'package:mysql_client/mysql_client.dart';

class MySQL {
  static String host = '192.168.1.102',
                userName = 'root',
                password = '2201',
                databaseName = 'test';
  static int port = 3306;

  MySQL();

  Future<void> main() async {
    final conn = await MySQLConnection.createConnection(
        host: host,
        port: port,
        userName: userName,
        password: password,
        databaseName: databaseName
    );
     return await conn.connect();


  }
}