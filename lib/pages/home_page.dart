
import 'package:vocabulary_app/pages/add_dictionaries_page.dart';
import 'package:vocabulary_app/pages/dictionaries_page.dart';
import 'package:vocabulary_app/pages/favourites_page.dart';
import 'package:vocabulary_app/pages/game_page.dart';
import 'package:vocabulary_app/pages/intro_page.dart';
import 'package:vocabulary_app/pages/search_page.dart';
import 'package:vocabulary_app/services/utils.dart';

import '../services/io_service.dart';

class HomePage {
  HomePage() {
    print("Welcome To Home Page!");
    viewHome();
  }

  void viewHome() {
    print("\n0. Exit");
    print("1. Search ");
    print("2. Dictionaries");
    print("3. Favourites");
    print("4. Add Dictionaries");
    print('5. Game Page');
    print('6. Change Language\n');

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
          SearchPage();
        }
        break;
      case 2:
        {
          DictionariesPage();
        }
        break;
      case 3:
        {
          FavouritesPage();
        }
        break;
      case 4:
        {
          AddDictionariesPage();
        }
        break;
      case 5:
        {
          GamePage();
        }
        break;
      case 6:
        {
          IntroPage();
        }
        break;

      default:
        {
          HomePage();
        }
    }
  }
}
