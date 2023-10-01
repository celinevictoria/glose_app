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

// Translate Functions
String? translateEngToNor(String engWord) {
  Map<String, String> matchMap = matchMapFuncEngToNor();
  return matchMap[engWord];
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
