import 'package:get/get.dart';
import 'package:toejiggeum/languages/bangla.dart';
import 'package:toejiggeum/languages/english.dart';
import 'package:toejiggeum/languages/korean.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    "bn_BD" : bangla,
    "en_US" : english,
    "ko_KR" : korean,
  };

}