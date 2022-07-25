# An arcade game player wants to climb to the top of the leaderboard and track their ranking. The game uses Dense Ranking, so its leaderboard works like this:
  # The player with the highest score is ranked number 1 on the leaderboard.
  # Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
# Example
  # ranked = [100, 90, 90, 80]
  # player = [70, 80, 105]
  # The ranked players will have ranks 1, 2, 2, and 3, respectively. If the player's scores are 70, 80, and 105, their rankings after each game are 4th, 3rd, and 1st. Return [4, 3, 1].

# Dense Ranking Definition from Wikipedia:
  # Dense ranking ("1223" ranking)
  # In dense ranking, items that compare equally receive the same ranking number, and the next items receive the immediately following ranking number. Equivalently, each item's ranking number is 1 plus the number of items ranked above it that are distinct with respect to the ranking order.
  # Thus if A ranks ahead of B and C (which compare equal) which are both ranked ahead of D, then A gets ranking number 1 ("first"), B gets ranking number 2 ("joint second"), C also gets ranking number 2 ("joint second") and D gets ranking number 3 ("Third").