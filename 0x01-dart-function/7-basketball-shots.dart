Map<String, int> scoreKey = {
  'Free throws': 1,
  '2 pointers': 2,
  '3 pointers': 3,
};
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculateScore(Map<String, int> team) {
    int score = 0;
    team.forEach((key, value) {
      score += scoreKey[key] !* value;
    });
    return score;
  }
  int teamAScore = calculateScore(teamA);
  int teamBScore = calculateScore(teamB);
  if (teamAScore > teamBScore) {
    return 1;
  } else if (teamAScore < teamBScore) {
    return 2;
  } else {
    return 0;
  }

}