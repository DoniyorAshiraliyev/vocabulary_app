class UzDictionary {
  String uz;
  List<String> eng = [];
  String description;
  String grammar;
  bool isLike;

  UzDictionary({
    required this.uz,
    required this.eng,
    required this.grammar,this.description = '',this.isLike=false
  }) ;
}