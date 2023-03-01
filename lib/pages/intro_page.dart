import 'package:vocabulary_app/pages/home_page.dart';
import 'package:vocabulary_app/services/io_service.dart';
import 'package:vocabulary_app/services/utils.dart';
int language=0;
class IntroPage {
  IntroPage() {
    welcome();
  }

  void welcome() {
    print("Welcome to Vocabulary App!");
    print("\n0. Exit");
    print("1. English To Uzbek");
    print("2. Uzbek To English");
    int page = io.number;
    switch (page) {
      case 0:
        {
          Utils.exit();
          break;
        }
      case 1:
        {
          language=1;
          HomePage();
        }
        break;
      case 2:
        {
          language=2;
          HomePage();
        }
        break;
      default:
        {
          IntroPage();
        }
    }
  }
}
