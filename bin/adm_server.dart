import 'dart:io';

//import 'package:logging/logging.dart';
//import 'package:adm_server/log_record_formatter.dart';

import 'package:adm_server/server_shelf.dart';
import 'package:adm_server/sources.dart';
import 'package:adm_server/system.dart';

void main(List<String> arguments) async {
  // set Directory(""); to use current
  String sourcesDirPath = Directory("test/data").absolute.path;
  System system = System(sourcesDirPath);
  Sources sources = Sources(system);

  ServerShelf serverShelf = ServerShelf(system, sources);
  await serverShelf.start();
}
