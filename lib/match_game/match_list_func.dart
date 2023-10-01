// Map functions to help with translations, will move if not needed on their own.
Map<String, String> matchMapFuncEngToNor() {
  return {
    "Continent": "Kontinent",
    "Joey": "Joey (baby kenguru)",
    "Kangaroo": "Kenguru",
    "Boomerang": "Boomerang",
    "Change": "Endring",
    "Page": "Side"
  };
}

Map<String, String> matchMapFuncNorToEng() {
  return {
    "Kontinent": "Continent",
    "Joey (baby kenguru)": "Joey",
    "Kenguru": "Kangaroo",
    "Boomerang": "Boomerang",
    "Endring": "Change",
    "Side": "Page"
  };
}

// Translate Functions
String? translateEngToNor(String engWord) {
  Map<String, String> matchMap = matchMapFuncEngToNor();
  return matchMap[engWord];
}

String? translateNorToEng(String norWord) {
  Map<String, String> matchMap = matchMapFuncNorToEng();
  return matchMap[norWord];
}

// List with all words (both english and norwegian)
List<String> matchListFunc() {
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
