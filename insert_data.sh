#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#Functions
CREATE_TABLES(){
  $($PSQL "CREATE TABLE games()")
  $($PSQL "CREATE TABLE teams()")
  $($PSQL "ALTER TABLE teams ADD COLUMN team_id SERIAL PRIMARY KEY NOT NULL")
  $($PSQL "ALTER TABLE teams ADD COLUMN name VARCHAR(30) UNIQUE NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN year INT NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN round VARCHAR(30) NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN winner_id INT NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN opponent_id INT NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN winner_goals INT NOT NULL")
  $($PSQL "ALTER TABLE games ADD COLUMN opponent_goals INT NOT NULL")
  $($PSQL "ALTER TABLE games ADD FOREIGN KEY(winner_id) REFERENCES teams(team_id)")
  $($PSQL "ALTER TABLE games ADD FOREIGN KEY(opponent_id) REFERENCES teams(team_id)")
}

INSERT_TEAM(){
  if [[ $1 ]]
  then
  #check if team is already in table, if not insert it
    TEAM_NAME=$(echo $1 | sed 's/"//g')
    GET_TEAM=$($PSQL "SELECT name FROM teams WHERE name = '$TEAM_NAME'")
    echo "SELECT name FROM teams WHERE name = '$TEAM_NAME'" $GET_TEAM
    if [[ -z $GET_TEAM ]]
    then
      INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$TEAM_NAME')")
      echo "INSERT INTO teams(name) VALUES('$TEAM_NAME')" $INSERT_TEAM
    fi
  fi
}

INSERT_GAME(){
  echo $1
  echo $2
  echo $3
  echo $4
  echo $5
  echo $6
  echo "---------------------------------------------------"
  if [[ $1 && $2 && $3 && $4 && $5 && $6 ]]
  then
  #check if game is already in table, if not insert it
    ROUND_TYPE=$(echo $2 | sed 's/"//g')
    WINNER_NAME=$(echo $3 | sed 's/"//g')
    OPPONENT_NAME=$(echo $4 | sed 's/"//g')
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER_NAME'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT_NAME'")
    if [[ ! -z $WINNER_ID && ! -z $OPPONENT_ID ]]
    then
      GET_GAME=$($PSQL "SELECT * FROM games WHERE year = $1 AND round = '$ROUND_TYPE' AND winner_id = $WINNER_ID AND opponent_id = $OPPONENT_ID")
      echo "SELECT * FROM games WHERE year = $1 AND round = '$ROUND_TYPE' AND winner_id = $WINNER_ID AND opponent_id = $OPPONENT_ID" $GET_GAME
      if [[ -z $GET_GAME ]]
      then
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($1, '$ROUND_TYPE', $WINNER_ID, $OPPONENT_ID, $5, $6)")
        echo "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($1, '$ROUND_TYPE', $WINNER_ID, $OPPONENT_ID, $5, $6)" $INSERT_GAME
      fi
    fi
  fi
}

$($PSQL "TRUNCATE TABLE games, teams")
CREATE_TABLES

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #skip first line
  if [[ $YEAR -ne 'year' ]]
  then
    echo "-------------------------------------------"
    echo "----" $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS "----"
    echo "---------------------------------------------------"
    INSERT_TEAM "\"$WINNER\""
    INSERT_TEAM "\"$OPPONENT\""
    INSERT_GAME $YEAR "\"$ROUND\"" "\"$WINNER\"" "\"$OPPONENT\"" $WINNER_GOALS $OPPONENT_GOALS
  fi
done
