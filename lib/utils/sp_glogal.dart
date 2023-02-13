import 'package:shared_preferences/shared_preferences.dart';

class SPGlobal {
  static final SPGlobal _instance = SPGlobal.mandarina();
  SPGlobal.mandarina();
  factory SPGlobal() {
    return _instance;
  }
  late SharedPreferences prefs;
  initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  setString(key, value) {
    prefs.setString(key, value);
  }

  String getString(key) {
    return prefs.getString(key) ?? "-";
  }
}
