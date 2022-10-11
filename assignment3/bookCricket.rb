=begin
============================================================
Q: Hope everyone played book cricket in school days, i want that game to be created in a more interactive way using ruby

It should ask for Match type odi /test- 2 innings / t20

if odi - 2 overs to be played and test mean 2 overs, 2 innings, 20-20 - 1over

Toss

Playing 11

Choose captain


You can choose who can come next for batting

Have 1,2,3,4,6, Wicket(caught behind, stumping, lbw, runout, catch out, bold), Wide, byes, leg byes etc as random generator

over changes, strike changes applicable



Score Card has to be written in file and displayed whenever needed or after every over.

Run rates

Required rates

Strike rates

Bowling economy



Write unit test cases using rspec whereever necessary. Utilize class, modules,methods and all the concepts learnt so far effectively in a ruby way

============================================================
=end


# ===================================================================================
# Utilize class, modules,methods and all the concepts learnt so far effectively in a ruby way
# ===================================================================================

# 1) It should ask for Match type odi /test- 2 innings / t20

class BookCricket
    attr_accessor :type_of_match, :toss, :selectCaptain, :nextBat, 
    def initialize params
        @type_of_match = params[:type_of_match]
        @toss = params[:toss]
        @t1_playing11 = []
        @t2_playing11 = []
        @selectCaptain = params[:selectCaptain]
        @nextBat = params[:nextBat]
    end
    @@teams = ['Team1', 'Team2']
    @@first_bat_team = 'Team1'
    @@sec_bat_team = 'Team2'
    @@current_team = ""
    @@secondary_team = ""
    @@player_on_strike = ""
    @@player_not_on_strike = ""
    @@player_score = 0
    @@team_score = 0
    
    puts "What match you would like to play? Test / ODI / T20 ? : "
    @type_of_match = gets.chomp.to_s
    puts "Type of match is : #{@type_of_match}"

    def over
        puts "inside Over"
        6.times do
            ball
        end
        switch_strike_player
    end
    def innings
        choose_opening_players
        puts "Inside Innigs"
        if @type_of_match == "T20"
            puts "Its a T20 match"
            over
        else
            2.times do
                over
            end
        end

    end
    def game_type
        puts "inside Game"
        #   1.1) if odi - 2 overs to be played and 
        if  @type_of_match == "Test"
            puts "inside test match"
            2.times do
                innings
            end
        #   1.2) test mean 2 overs, 2 innings, 
        else
            innings
        end
        #   1.3) 20-20 - 1over
    end
    # 2) Toss
    def toss
        # select randomly if team 1 or team2 plays
        puts "outputting teams",@@teams
        puts @@first_bat_team = @@teams.sample
        (@@teams.find_index(@@first_bat_team) == 0 ) ? (@@sec_bat_team = @@teams[1]) : (@@sec_bat_team = @@teams[0])
        puts @@first_bat_team, @@sec_bat_team
        @@teams = [@@first_bat_team, @@sec_bat_team]
        puts @@teams
        game_start
    end
    def game_start
        @@teams.each do |team|
            @@current_team = team
            game_type
        end
    end
    # 3) Playing 11
    def playing11
        puts "Mention Team1 playing 11 players names seperated using comma(','): "
        @t1_playing11 = gets.chomp.split(",")

        puts "Mention Team2 playing 11 players names seperated using comma(','): "
        @t2_playing11 = gets.chomp.split(",")

        choose_captain
    end
    #   3.1) Choose captain
    def choose_captain
        @selectCaptain = []

        puts "Select your captain from the follown list for team 1: #{@t1_playing11}"
        @selectCaptain.push(gets.chomp)
        
        puts "Select your captain from the follown list for team 2: #{@t2_playing11}"
        @selectCaptain.push(gets.chomp)

        toss
    end
    def choose_opening_players
        puts "Select first opening player from the given list #{(@@current_team == "Team1"? @t1_playing11.to_s : @t2_playing11.to_s)}"

        puts "Opening Strike Player : ", @@player_on_strike = gets.chomp.to_s
        puts "Opening Non-Strike Player : ", @@player_not_on_strike = gets.chomp.to_s

    end
    def switch_strike_player
        @@player_on_strike, @@player_not_on_strike = @@player_not_on_strike, @@player_on_strike
    end
    #   3.2) You can choose who can come next for batting
    def next_bat
        puts "Your player #{@@player_on_strike} is out please select another player from the list #{(@@current_team == "Team1"? @t1_playing11.to_s : @t2_playing11.to_s)} : "
        @@player_on_strike = gets.chomp.to_s
    end

    
    # 4) Have 1,2,3,4,6, Wicket(caught behind, stumping, lbw, runout, catch out, bold), Wide, byes, leg byes etc as random generator
    def ball
        puts "Ball Thrown"
        puts "current Player is : #{@@player_on_strike}"
        wickets = ["caught behind", "stumping", "lbw", "runout", "catch out", "bold"]
        happen_on_ball = [1,2,3,4,6, "caught behind", "stumping", "lbw", "runout", "catch out", "bold", "Wide", "byes", "leg byes"]
        puts ball_status = happen_on_ball.sample
        if wickets.include? ball_status
            puts "You are out because of #{ball_status}"
            @@current_team == "Team1"? @t1_playing11.delete(@@player_on_strike) : @t2_playing11.delete(@@player_on_strike)
            next_bat
        elsif ball_status == 1 || ball_status == 3
            change_score(ball_status)
            switch_strike_player
        elsif  ball_status == "Wide" || ball_status == "byes" || ball_status == "leg byes"
            team_score(1)
        end
    end
    def change_score(score)
        player_score(score)
        team_score(score)
    end
    def player_score(score)
        puts "#{@@player_on_strike} score adds with #{score}"
    end
    def team_score(score)
        puts "#{} score adds with #{score}"
    end
    # 5) over changes, strike changes applicable
    # 6) Score Card has to be written in file and displayed whenever needed or after every over.
    #   6.1) Create a file named scores, and write details on that
    #       6.1.1) Run rates
    #       6.1.2) Required rates
    #       6.1.3) Strike rates
    #       6.1.4) Bowling economy
    # 7) Write unit test cases using rspec whereever necessary.
end

cricket = BookCricket.new()
cricket
cricket.playing11