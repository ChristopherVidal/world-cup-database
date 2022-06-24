#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams")"

cat games.csv| while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != 'year' ]]
  then
    WINNER_ID="$($PSQL "SELECT team_id FROM teams where name='$WINNER'")"
    OPPONENT_ID="$($PSQL "SELECT team_id FROM teams where name='$OPPONENT'")"
    if [[ -z $WINNER_ID && -z $OPPONENT_ID ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) values('$WINNER'),('$OPPONENT')")"
    elif [[ -z $WINNER_ID ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) values('$WINNER')")"
    elif [[ -z $OPPONENT_ID ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) values('$OPPONENT')")"
    fi

    if [[ -z $WINNER_ID ]]
    then
      WINNER_ID="$($PSQL "SELECT team_id FROM teams where name='$WINNER'")"
    fi
    if [[ -z $OPPONENT_ID ]]
    then
      OPPONENT_ID="$($PSQL "SELECT team_id FROM teams where name='$OPPONENT'")"
    fi
    echo "$($PSQL "INSERT INTO games(winner_id,opponent_id, winner_goals, opponent_goals, year, round) values($WINNER_ID,$OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR, '$ROUND')")"
  fi
done