import 'dart:io';

import './started.dart';

Future<void> main() async {
  await Process.start('dart', ['bin/flavor.dart', 'staging']);

  print("Insert title metadata ?");

  String? title = stdin.readLineSync();

  print("Insert description metadata ?");

  String? description = stdin.readLineSync();

  print("Insert path assets thumbnail metadata ?");

  String? image = stdin.readLineSync();

  print('make metadata...');
  makeHtmlmetaData({
    'title': title,
    'description': description,
    'image': image,
  });
}
