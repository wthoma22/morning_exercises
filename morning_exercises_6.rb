require 'pry'

class SoccerSchedule

  def initialize(number)
    self.number_of_teams = number
    calculate_table
  end

  def number_of_teams=(number)
    if number.even?
      number += 1
    end
    @number_of_teams = number
  end

  def number_of_days
      number_of_teams - 1
  end

  def calculate_table
    @table = []
    @table[0] = (1..number_of_teams).to_a
    for i in (1..number_of_days) do
      @table[i] = @table[i-1][0..number_of_teams-2].rotate + [@table[i-2][number_of_teams-1]]
    end
  end

Here's a puzzle for you:
        Imagine you run a soccer league and you need to create a schedule. Each team
        plays only one game per week on Saturday.
        #### Easy
        Your league has eight teams. Generate (to the screen or to a file), a schedule that has each team play each other team exactly once.
        ##### Medium
        #Your league has two divisions of eight teams. Each team should play the other
        #teams in their division twice and the teams in the other division just once.
        ##### Hard
        Your league has four divisions of eight teams. Each team should play each team
        in their division twice and any two teams from each other division.
