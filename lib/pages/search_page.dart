import 'package:vocabulary_app/database/dictionaries.dart';
import 'package:vocabulary_app/pages/home_page.dart';
import 'package:vocabulary_app/pages/intro_page.dart';
import 'package:vocabulary_app/services/io_service.dart';

class SearchPage {
  SearchPage() {
    print('Search 🔎:');
    String search = io.text;
    int count = 0;
    if (language == 1) {
      for (var i in engDictionaries) {
        if (i.eng.toLowerCase() == search.toLowerCase()) {
          print("Search Result✅:  ${i.eng} ${i.isLike ? '❤️' : ''}");
          count++;
        }
      }
    } else {
      for (var i in uzDictionaries) {
        if (i.uz.toLowerCase() == search.toLowerCase()) {
          print("Search Result✅:  ${i.uz} ${i.isLike ? '❤️' : ''}");

          count++;
        }
      }
    }
    if (count == 0) {
      print('Dictionary is not found!');
    }
    HomePage();
  }
}
