import 'package:vocabulary_app/database/dictionaries.dart';
import 'package:vocabulary_app/pages/home_page.dart';
import 'package:vocabulary_app/pages/intro_page.dart';
import 'package:vocabulary_app/services/io_service.dart';
import 'package:vocabulary_app/services/utils.dart';

class DictionariesPage {
  DictionariesPage() {
    print("\n0. Exit");
    print("1. Dictionaries");
    print("2. Home Page");

    int page = io.number;

    print('\n\n');
    switch (page) {
      case 0:
        {
          Utils.exit();
          break;
        }
      case 1:
        {
          viewDictionaries();
          HomePage();
        }
        break;
      case 2:
        {
          HomePage();
        }
        break;
      default:
        {
          DictionariesPage();
        }
    }
  }
}

void viewDictionaries() {
  if (language == 1) {
    for (int i = 0; i < engDictionaries.length; i++) {
      print(
          "${engDictionaries[i].eng} ${engDictionaries[i].isLike == true ? '❤️' : ''}");
      print(engDictionaries[i].grammar);
      for (int j = 0; j < engDictionaries[i].uz.length; j++) {
        print('${j + 1}. ${engDictionaries[i].uz[j]}');
      }
      Utils.space();
    }
  } else {
    for (int i = 0; i < uzDictionaries.length; i++) {
      print(
          "${uzDictionaries[i].uz} ${uzDictionaries[i].isLike == true ? '❤️' : ''}");
      print(uzDictionaries[i].grammar);
      for (int j = 0; j < uzDictionaries[i].eng.length; j++) {
        print('${j + 1}. ${uzDictionaries[i].eng[j]}');
      }
      Utils.space();
    }
  }
}
