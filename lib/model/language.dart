import 'package:get/get.dart';
import 'package:toejiggeum/utill/languages/bangla.dart';
import 'package:toejiggeum/utill/languages/english.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "bn_BD" : bangla,
    "en_US" : english,
  };

}