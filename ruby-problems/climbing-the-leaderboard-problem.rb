# https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem?isFullScreen=true

# INSTRUCTIONS
# An arcade game player wants to climb to the top of the leaderboard and track their ranking. The game uses Dense Ranking, so its leaderboard works like this:
  # The player with the highest score is ranked number 1 on the leaderboard.
  # Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
# Example
  # ranked = [100, 90, 90, 80]
  # player = [70, 80, 105]
  # The ranked players will have ranks 1, 2, 2, and 3, respectively. If the player's scores are 70, 80, and 105, their rankings after each game are 4th, 3rd, and 1st. Return [4, 3, 1].

# "Dense Ranking" Definition from Wikipedia:
  # Dense ranking ("1223" ranking)
  # In dense ranking, items that compare equally receive the same ranking number, and the next items receive the immediately following ranking number. Equivalently, each item's ranking number is 1 plus the number of items ranked above it that are distinct with respect to the ranking order.
  # Thus if A ranks ahead of B and C (which compare equal) which are both ranked ahead of D, then A gets ranking number 1 ("first"), B gets ranking number 2 ("joint second"), C also gets ranking number 2 ("joint second") and D gets ranking number 3 ("Third").

# STEPS
# Define a method that accepts two arrays: 1) ranked - which contains the scores of players already on the leaderboard, and; 2) player - which contains the scores of the player that are to be compared to the leaderboard
# Create a variable called player_index and set it equal to zero
# Define a variable called player_position and set it equal to -1
# Write a loop that iterates through each value in the player array, starting with the first
  # Create a ranked_index variable and set it equal to zero
  # Create a current_ranking variable and set it to 1
  # Create a nested loop: starting with the first value in the player array, iterate through the ranked array, comparing player[player_index] to values in the ranked array until player[player_index] is less than or equal to ranked[ranked_index].
    # If player_position > -1, delete player[player_position from the array]
    # Set player_position = the index in player array that it was inserted at -- basically player[*Wherever the player score was inserted*] --> so player_position = ranked_index
    # Reset ranked_index equal to zero
    # Then insert player[player_index] into the ranked array at ranked_index once the loop is false
    # Create a nested loop within this nested loop, which iterates through the ranked array starting at the first value -- ACTUALLY MAYBE DONT NEED THIS TO BE A WHOLE LOOP, BUT RATHER CAN JUST INSERT THESE IF STATEMENTS INTO THE LAST LOOP I MADE
      # If ranked[ranked_index] == ranked[ranked_index + 1], then just increase ranked_index by 1
      # If ranked[ranked_index] > ranked[ranked_index + 1], then current_ranking += 1
      # Once the loop has reached the player_position value in the array and evaluated it with the above if statements, break the loop and return current_ranking

# def climbing_leaderboard(ranked, player)
#   player_index = 0
#   player_position = -1
#   while player_index < player.length
#     ranked_index = 0
#     current_ranking = 1
    
#     until player[player_index] <= ranked[ranked_index].to_i
#       if player_position > -1
#         ranked.delete_at(player_position)
#       end

#       until ranked_index == player_position
#         if ranked[ranked_index].to_i > ranked[ranked_index + 1].to_i
#           current_ranking += 1
#         end
#         ranked_index += 1
#       end
#       ranked.insert(ranked_index, player[player_index])
#       player_position = ranked_index
#       current_ranking
#     end


#     player_index += 1
#   end
# end

def climbing_leaderboard(ranked, player)
  player_index = 0
  player_position = -1
  
  while player_index < player.length
    ranked_index = -1
    current_ranking = 1
    
    if player_position > -1
      ranked.delete_at(player_position)
    end
    
    until player[player_index] <= ranked[ranked_index].to_i
      
      until ranked_index == player_position
        ranked_index += 1

        if ranked[ranked_index].to_i > ranked[ranked_index + 1].to_i
          current_ranking += 1
        end
        
      end
      
      ranked.insert(ranked_index, player[player_index])
      player_position = ranked_index
      p current_ranking
    end

    player_index += 1
  end
end

p climbing_leaderboard([100, 90, 90, 80], [70, 80, 105])
