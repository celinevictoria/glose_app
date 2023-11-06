int weekToQuestionCount(String week) {
  if (week == "Week 38") {
    return 7;
  } else if (week == "Week 39") {
    return 10;
  } else if (week == "Week 40") {
    return 6;
  } else if (week == "Week 42") {
    return 5;
  } else if (week == "Week 43") {
    return 7;
  } else if (week == "Week 44") {
    return 8;
  } else if (week == "Week 45") {
    return 9;
  } else {
    return 52;
  }
}

List<String> weekList() {
  return [
    "All Weeks",
    "Week 38",
    "Week 39",
    "Week 40",
    "Week 42",
    "Week 43",
    "Week 44",
    "Week 45"
  ];
}