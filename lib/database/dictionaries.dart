import 'package:vocabulary_app/models/eng_dictionary_model.dart';
import 'package:vocabulary_app/models/uz_dictionary_model.dart';

final engDictionary1 = EngDictionary(
    eng: 'make', uz: ['qilmoq', 'yasamoq'], grammar: 'verb', isLike: true);
final engDictionary2 = EngDictionary(
    eng: 'do', uz: ['qilmoq', 'bajarmoq'], grammar: 'verb');
final uzDictionary1 = UzDictionary(
    uz: 'qidirmoq', eng: ['search'], grammar: 'verb');
final uzDictionary2 = UzDictionary(
    uz: 'tes', eng: ['test'], grammar: 'noun', isLike: true);


final engDictionaries = [engDictionary1, engDictionary2];
final uzDictionaries = [uzDictionary1, uzDictionary2];
final engFavourites = [for(int i=0;i<engDictionaries.length;i++)if(engDictionaries[i].isLike==true)"${engDictionaries[i].eng} ❤️"];
final uzFavourites = [for(int i=0;i<uzDictionaries.length;i++)if(uzDictionaries[i].isLike==true)"${uzDictionaries[i].uz} ❤️"];

