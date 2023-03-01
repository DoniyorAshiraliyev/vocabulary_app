import 'package:vocabulary_app/database/dictionaries.dart';
import 'package:vocabulary_app/pages/home_page.dart';
import 'package:vocabulary_app/pages/intro_page.dart';
import 'package:vocabulary_app/services/io_service.dart';
import 'package:vocabulary_app/services/utils.dart';

class FavouritesPage{
  FavouritesPage(){
    print("\n0. Exit");
    print("1. Favourites");
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
          viewFavourites();
          HomePage();
        }
        break;
      case 2:
        {
          HomePage();
        }
        break;
      default:{
        FavouritesPage();
      }

  }
}

}
void viewFavourites(){
if(language==1){
  print(engFavourites);
}
else{
  print(uzFavourites);
}
}