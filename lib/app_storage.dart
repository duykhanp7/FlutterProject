import 'package:get_storage/get_storage.dart';

class AppStorage{


  static const String _languages = "lang";

  static final _box = GetStorage();


  static void saveLanguages(String lang){
    _box.write(_languages, lang);
  }

  static String getLanguages(){
    return _box.read(_languages) ?? "vi";
  }

}