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
    "Page": "Side",
    //Week 42
    "Thorns": "Torner",
    "Swallow": "Svelge",
    "Support": "Støtte",
    "Anteater": "Maursluker",
    "Venomous": "Giftig",
    //Week 43
    "Prevent": "Forhindre",
    "Fence": "Gjerde",
    "Settle": "Gjøre opp",
    "Rabbit proof": "Kaninsikkert",
    "Settlement": "Bosetting",
    "Harse": "Hard",
    "Exhausted": "Utslitt",
    //Week 44
    "Meal": "Måltid",
    "Barbecuing": "Grilling",
    "Meat": "Kjøtt",
    "Chilled": "Avkjølt",
    "Multiculturual influences": "Flerkulturelle påvirkninger",
    "Aussies": "Australiere",
    "Surf and turf": "Surf og turf",
    "Esky": "Termos"
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
  } else if (weekCount == "Week 42") {
    return [
      "Thorns",
      "Torner",
      "Swallow",
      "Svelge",
      "Support",
      "Støtte",
      "Anteater",
      "Maursluker",
      "Venomous",
      "Giftig"
    ];
  } else if (weekCount == "Week 43") {
    return [
    "Prevent",
    "Forhindre",
    "Fence",
    "Gjerde",
    "Settle",
    "Gjøre opp",
    "Rabbit proof",
    "Kaninsikkert",
    "Settlement",
    "Bosetting",
    "Harse",
    "Hard",
    "Exhausted",
    "Utslitt"
    ];
  } else if (weekCount == "Week 44") {
    return [
    "Meal",
    "Måltid",
    "Barbecuing",
    "Grilling",
    "Meat",
    "Kjøtt",
    "Chilled",
    "Avkjølt",
    "Multiculturual influences",
    "Flerkulturelle påvirkninger",
    "Aussies",
    "Australiere",
    "Surf and turf",
    "Surf og turf",
    "Esky",
    "Termos"
    ];
  } else if (weekCount == "All Weeks") {
    return [
      //Week 38
      "Aboriginal", "Aboriginer",
      "Convict", "Dømme/dømt person",
      "Apologised", "Unnskyldte seg",
      "Indidigenous people", "Urfolk",
      "Claimed", "Krevde/Hevdet",
      "Claim back", "Kreve tilbake",
      "Townships", "Byer/Tettsteder",
      //Week 39
      "Home to", "Hjem til",
      "Unique", "Unik",
      "Diverse", "Mangfoldig",
      "Landscape", "Landskap",
      "Country", "Land",
      "Although", "Selv om",
      "Desert", "Ørken",
      "Entertainment", "Underholdning",
      "Coast", "Kyst",
      "Population", "Befolkning",
      //Week 40
      "Continent", "Kontinent",
      "Joey", "Joey (baby kenguru)",
      "Kangaroo", "Kenguru",
      "Boomerang", "Boomerang",
      "Change", "Endring",
      "Page", "Side",
      //Week 42
      "Thorns", "Torner",
      "Swallow", "Svelge",
      "Support", "Støtte",
      "Anteater", "Maursluker",
      "Venomous", "Giftig",
      //Week 43
      "Prevent", "Forhindre",
      "Fence", "Gjerde",
      "Settle", "Gjøre opp",
      "Rabbit proof", "Kaninsikkert",
      "Settlement", "Bosetting",
      "Harse", "Hard",
      "Exhausted", "Utslitt",
      //Week 44
      "Meal", "Måltid",
      "Barbecuing", "Grilling",
      "Meat", "Kjøtt",
      "Chilled", "Avkjølt",
      "Multiculturual influences", "Flerkulturelle påvirkninger",
      "Aussies", "Australiere",
      "Surf and turf", "Surf og turf",
      "Esky", "Termos"
    ];
  }
  return [];
}
