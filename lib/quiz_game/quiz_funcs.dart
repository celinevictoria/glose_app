import 'dart:math';

// question count: 17
Map<String, List<String>> masterMapFuncAll(String week) {
  Map<String, List<String>> masterMap;
  if (week == "Week 38") {
    masterMap = {
      "Aboriginal": ["Skilpadde", "Sko", "Same", "Aboriginer"],
      "Convict": [
        "Krype/Krypende person",
        "Sove/Sovende person",
        "Bestemme/Bestemt person",
        "Dømme/dømt person"
      ],
      "Apologised": ["Same", "Sov", "Danset", "Unnskyldte seg"],
      "Indidigenous people": ["Skilpaddefolk", "Late mennesker", "Lave mennesker", "Urfolk"],
      "Claimed": ["Lagde/Fant", "Dusjet/Badet", "Stjal/Lånte", "Krevde/Hevdet"],
      "Claim back": ["Rygge tilbake", "Kysse tilbake", "Dytte frem", "Kreve tilbake"],
      "Townships": ["Bønner", "Skoger", "Huler", "Byer/Tettsteder"],
    };
  } else if (week == "Week 39") {
    masterMap = {
      "Home to": ["Hjemmefra", "Synge til", "Potetgull fra", "Hjem til"],
      "Unique": ["Grønn", "Skjønn", "Bønn", "Unik"],
      "Diverse": ["Diverse", "Sjokoladekake", "Skog", "Mangfoldig"],
      "Landscape": ["Havutsikt", "Sugekopp", "Kjøkkenskap", "Landskap"],
      "Country": ["By", "Slott", "Sykkel", "Land"],
      "Although": ["Istedenfor", "Igjennom", "Syltetøy", "Selv om"],
      "Desert": ["Dessert", "Elv", "Rumpe", "Ørken"],
      "Entertainment": ["Bønner", "Skoger", "Huler", "Underholdning"],
      "Coast": ["Bønne", "Innsjø", "Fjell", "Kyst"],
      "Population": ["Bønner", "Skoger", "Huler", "Befolkning"],
    };
  } else if (week == "Week 40") {
    masterMap = {
      "Continent": ["Hav", "Konstant", "Sukkerspinn", "Kontinent"],
      "Joey": [
        "Joey (baby koala)",
        "Joey (baby kamel)",
        "Joey (baby zebra)",
        "Joey (baby kenguru)"
      ],
      "Kangaroo": ["Koala", "Kiwi", "Kakao", "Kenguru"],
      "Boomerang": ["Pinne", "Golfball", "Frisbee", "Boomerang"],
      "Change": ["Vekslepenger", "Sjampo", "Kontanter", "Endring"],
      "Page": ["Bok", "Potet", "Liste", "Side"]
    };
  } else if (week == "Week 42") {
    masterMap = {
      "Thorns": ["Roser", "Poteter", "Søppelbøtter", "Torner"],
      "Swallow": ["Sverge", "Tygge", "Spytte", "Svelge"],
      "Support": ["Nøtter", "Stol", "Sjakkbrett", "Støtte"],
      "Anteater": ["Beltedyr", "Dovendyr", "Kamel", "Maursluker"],
      "Venomous": ["Blodig", "Vemodig", "Hyggelig", "Giftig"]
    };
  } else if (week == "All Weeks") {
    masterMap = {
      //Week 38
      "Aboriginal": ["Skilpadde", "Sko", "Same", "Aboriginer"],
      "Convict": [
        "Krype/Krypende person",
        "Sove/Sovende person",
        "Bestemme/Bestemt person",
        "Dømme/dømt person"
      ],
      "Apologised": ["Same", "Sov", "Danset", "Unnskyldte seg"],
      "Indidigenous people": ["Skilpaddefolk", "Late mennesker", "Lave mennesker", "Urfolk"],
      "Claimed": ["Lagde/Fant", "Dusjet/Badet", "Stjal/Lånte", "Krevde/Hevdet"],
      "Claim back": ["Rygge tilbake", "Kysse tilbake", "Dytte frem", "Kreve tilbake"],
      "Townships": ["Bønner", "Skoger", "Huler", "Byer/Tettsteder"],
      //Week 39
      "Home to": ["Hjemmefra", "Synge til", "Potetgull fra", "Hjem til"],
      "Unique": ["Grønn", "Skjønn", "Bønn", "Unik"],
      "Diverse": ["Diverse", "Sjokoladekake", "Skog", "Mangfoldig"],
      "Landscape": ["Havutsikt", "Sugekopp", "Kjøkkenskap", "Landskap"],
      "Country": ["By", "Slott", "Sykkel", "Land"],
      "Although": ["Istedenfor", "Igjennom", "Syltetøy", "Selv om"],
      "Desert": ["Dessert", "Elv", "Rumpe", "Ørken"],
      "Entertainment": ["Bønner", "Skoger", "Huler", "Underholdning"],
      "Coast": ["Bønne", "Innsjø", "Fjell", "Kyst"],
      "Population": ["Bønner", "Skoger", "Huler", "Befolkning"],
      //Week 40
      "Continent": ["Hav", "Konstant", "Sukkerspinn", "Kontinent"],
      "Joey": [
        "Joey (baby koala)",
        "Joey (baby kamel)",
        "Joey (baby zebra)",
        "Joey (baby kenguru)"
      ],
      "Kangaroo": ["Koala", "Kiwi", "Kakao", "Kenguru"],
      "Boomerang": ["Pinne", "Golfball", "Frisbee", "Boomerang"],
      "Change": ["Vekslepenger", "Sjampo", "Kontanter", "Endring"],
      "Page": ["Bok", "Potet", "Liste", "Side"],
      //Week 42
      "Thorns": ["Roser", "Poteter", "Søppelbøtter", "Torner"],
      "Swallow": ["Sverge", "Tygge", "Spytte", "Svelge"],
      "Support": ["Nøtter", "Stol", "Sjakkbrett", "Støtte"],
      "Anteater": ["Beltedyr", "Dovendyr", "Kamel", "Maursluker"],
      "Venomous": ["Blodig", "Vemodig", "Hyggelig", "Giftig"]
    };
  } else {
    masterMap = {};
  }

  for (List<String> optionList in masterMap.values) {
    optionList = optionList..shuffle();
  }

  return masterMap;
}

Map<String, List<String>> randomQuestion(masterList) {
  String question = masterList.keys.elementAt(Random().nextInt(masterList.length));

  List<String> answerList = masterList[question];

  return {question: answerList};
}

List<String> answerListFunc() {
  return [
    //Week 38
    "Aboriginer",
    "Dømme/dømt person",
    "Unnskyldte seg",
    "Urfolk",
    "Krevde/Hevdet",
    "Kreve tilbake",
    "Byer/Tettsteder",
    //Week 39
    "Hjem til",
    "Unik",
    "Mangfoldig",
    "Landskap",
    "Land",
    "Selv om",
    "Ørken",
    "Underholdning",
    "Kyst",
    "Befolkning",
    //Week 40
    "Kontinent",
    "Joey (baby kenguru)",
    "Kenguru",
    "Boomerang",
    "Vekslepenger",
    "Endring",
    "Side",
    //Week 42
    "Torner",
    "Svelge",
    "Støtte",
    "Maursluker",
    "Giftig"
  ];
}
