class EngDictionary {
  String eng;
  List<String> uz = [];
  String description;
  bool isLike;
  String grammar;

  EngDictionary({
    required this.eng,
    required this.uz,
    required this.grammar,
    this.description = '',
    this.isLike=false
  });
}
