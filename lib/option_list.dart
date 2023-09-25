import 'dart:math';

Map<String, List<String>> optionListFunc() {
  Map<String, List<String>> masterMap = {
    "Aboriginal": ["Skilpadde", "Sko", "Same", "Aboriginer"],
    "Convict": [
      "Krype/Krypende person",
      "Sove/Sovende person",
      "Bestemme/Bestemt person",
      "Dømme/dømt person"
    ],
    "Apologised": ["Same", "Sov", "Danset", "Unnskyldte seg"],
    "Indidigenous people": [
      "Skilpaddefolk",
      "Late mennesker",
      "Lave mennesker",
      "Urfolk"
    ],
    "Claimed": ["Lagde/Fant", "Dusjet/Badet", "Stjal/Lånte", "Krevde/Hevdet"],
    "Claim back": [
      "Rygge tilbake",
      "Kysse tilbake",
      "Dytte frem",
      "Kreve tilbake"
    ],
    "Townships": ["Bønner", "Skoger", "Huler", "Byer/Tettsteder"],
    //New week
    "Home to": ["Hjemmefra", "Synge til", "Potetgull fra", "Hjem til"],
    "Unique": ["Grønn", "Skjønn", "Bønn", "Unik"],
    "Diverse": ["Diverse", "Urfolk", "Skog", "Mangfoldig"],
    "Landscape": ["Havutsikt", "Sugekopp", "Kjøkkenskap", "Landskap"],
    "Country": ["By", "Slott", "Sykkel", "Land"],
    "Although": ["Istedenfor", "Igjennom", "Syltetøy", "Selv om"],
    "Desert": ["Dessert", "Elv", "Rompe", "Ørken"],
    "Entertainment": ["Bønner", "Skoger", "Huler", "Underholding"],
    "Coast": ["Bønne", "Innsjø", "Fjell", "Kyst"],
    "Population": ["Bønner", "Skoger", "Huler", "Befolkning"]
  };

  for (List<String> optionList in masterMap.values) {
    optionList = optionList..shuffle();
  }

  return masterMap;
}

Map<String, List<String>> randomQuestion(masterList) {
  String question =
      masterList.keys.elementAt(Random().nextInt(masterList.length));

  List<String> answerList = masterList[question];

  return {
    question: answerList
  };
}

List<String> answerListFunc() {
  return [
    "Aboriginer",
    "Dømme/dømt person",
    "Unnskyldte seg",
    "Urfolk",
    "Krevde/Hevdet",
    "Kreve tilbake",
    "Byer/Tettsteder",
    "Hjem til",
    "Unik",
    "Mangfoldig",
    "Landskap",
    "Land",
    "Selv om",
    "Ørken",
    "Underholdning",
    "Kyst",
    "Befolkning"
  ];
}
