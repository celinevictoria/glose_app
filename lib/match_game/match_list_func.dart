Map<String, String> matchListFunc() {
  return {
    "Continent": "Kontinent",
    "Joey": "Joey (baby kenguru)",
    "Kangaroo": "Kenguru",
    "Boomerang": "Boomerang",
    "Change": "Endring",
    "Page": "Side"
  };
}

String? translateEngToNor(String engWord) {
  Map<String, String> matchMap = matchListFunc();
  return matchMap[engWord];
}


