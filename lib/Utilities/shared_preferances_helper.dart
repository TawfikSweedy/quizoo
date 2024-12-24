
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref{
  // singleton
  factory SharedPref(){
    _this ??= SharedPref._();
    return _this!;
  }
  static SharedPref? _this;
  SharedPref._();


  static SharedPreferences? prefs;

  static const String _userObj = "userObj";
  static const String _language = "language_code";

  init()async{
    prefs = await SharedPreferences.getInstance();
  }


  static String? getLanguage(){
    return prefs?.getString(_language);
  }
  static Future<void> setLanguage({required String lang})async{
    await prefs?.setString(_language,lang);
  }
}