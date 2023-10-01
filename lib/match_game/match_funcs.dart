// Map functions to help with translations, will move if not needed on their own.
Map<String, String> matchMapFuncEngToNor() {
  return {
    //week 38
    "Aboriginal": "Aboriginer",
    "Convict": "Dømme/dømt person",
    "Apologised": "Unnskyldte seg",
    "Indidigenous people": "Urfolk",
    "Claimed": "Krevde/Hevdet",
    "Claim back": "Kreve tilbake",
    "Townships": "Byer/Tettsteder",
    //week 39
    "Home to": "Hjem til",
    "Unique": "Unik",
    "Diverse": "Mangfoldig",
    "Landscape": "Landskap",
    "Country": "Land",
    "Although": "Selv om",
    "Desert": "Ørken",
    "Entertainment": "Underholdning",
    "Coast": "Kyst",
    "Population": "Befolkning",
    //week 40
    "Continent": "Kontinent",
    "Joey": "Joey (baby kenguru)",
    "Kangaroo": "Kenguru",
    "Boomerang": "Boomerang",
    "Change": "Endring",
    "Page": "Side"
  };
}

// Translate Functions
String? translateEngToNor(String engWord) {
  Map<String, String> matchMap = matchMapFuncEngToNor();
  return matchMap[engWord];
}

// List with all words (both english and norwegian)
List<String> matchListFunc(String weekCount) {
  if (weekCount == "Week 38") {
    return [
      "Aboriginal",
      "Aboriginer",
      "Convict",
      "Dømme/dømt person",
      "Apologised",
      "Unnskyldte seg",
      "Indidigenous people",
      "Urfolk",
      "Claimed",
      "Krevde/Hevdet",
      "Claim back",
      "Kreve tilbake",
      "Townships",
      "Byer/Tettsteder"
    ];
  } else if (weekCount == "Week 39") {
    return [
      "Home to",
      "Hjem til",
      "Unique",
      "Unik",
      "Diverse",
      "Mangfoldig",
      "Landscape",
      "Landskap",
      "Country",
      "Land",
      "Although",
      "Selv om",
      "Desert",
      "Ørken",
      "Entertainment",
      "Underholdning",
      "Coast",
      "Kyst",
      "Population",
      "Befolkning"
    ];
  } else if (weekCount == "Week 40") {
    return [
      "Continent",
      "Kontinent",
      "Joey",
      "Joey (baby kenguru)",
      "Kangaroo",
      "Kenguru",
      "Boomerang",
      "Boomerang",
      "Change",
      "Endring",
      "Page",
      "Side"
    ];
  }
  return [];
}
