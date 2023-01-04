import 'package:adm_server/log_record_formatter.dart';
import 'package:logging/logging.dart';

class TestLogger {
  static bool recording = false;

  static void record() {
    if (TestLogger.recording == true) {
      return;
    }

    TestLogger.recording = true;
    Logger.root.onRecord.listen((r) => LogRecordFormatter.debug(r));
  }
}
