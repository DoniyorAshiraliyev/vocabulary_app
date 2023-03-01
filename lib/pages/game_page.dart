import 'package:vocabulary_app/pages/home_page.dart';
import 'package:vocabulary_app/services/io_service.dart';
import 'package:vocabulary_app/services/utils.dart';

class GamePage{
  GamePage(){
    print("\n0. Exit");
    print("1. Favourites");
    print("2. Home Page");

    int page = io.number;

    Utils.space();
    switch (page) {
      case 0:
        {
          Utils.exit();
          break;
        }
      case 1:
        {
          viewGames();
          HomePage();
        }
        break;
      case 2:
        {
          HomePage();
        }
        break;
      default:{
        GamePage();
      }

    }
}}
void viewGames(){
  print("\n0. Exit");
  print("1. Choose test count:");
  int testCount=io.number;
  switch (testCount) {
    case 1:
      {
        viewGames();
        HomePage();
      }
      break;
    default:{
      GamePage();
    }

  }
}