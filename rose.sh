#!/bin/bash

default_quotes=()
default_quotes+=("Hotcha Hotcha!")
default_quotes+=("Hotcha Hotcha!")
default_quotes+=("Hotcha Hotcha!")
default_quotes+=("[flutters eyes] Hotcha Hotcha!")
default_quotes+=("[flutters eyes] Hotcha Hotcha!")
default_quotes+=("Holiday Cookies!")
default_quotes+=("Ooh! I like it.")
default_quotes+=("Ooh! I’ll help with the hot wax.")
default_quotes+=("Eating chocolates and select pieces of garbage.")
default_quotes+=("I still think murder’s a better surprise.")
default_quotes+=("Your fingerprints are all over that gas can.")
default_quotes+=("Never leave evidence.")
default_quotes+=("[hisses]")
default_quotes+=("Chocolate! Yum yum yum yum yum.")
default_quotes+=("Hey nerds, I'm here to help!")
default_quotes+=("Heh heh heh heh heh")
default_quotes+=("Oooh...cupcakes!")
default_quotes+=("My advice is...don't use dating apps, they have too many background checks!")
default_quotes+=("OooOoo I can see your git history...Hotcha! Hotcha!")
# default_quotes+=("One minute it's $(TZ=America/Halifax date +"%-I:%M") and the next it's $(TZ=America/Halifax date -d '1 min' +"%-I:%M")")

chirstmas_quotes=()
chirstmas_quotes+=("Hotcha Hotcha!")
chirstmas_quotes+=("Holiday Cookies!")
chirstmas_quotes+=("Holiday Cookies!")
chirstmas_quotes+=("Holiday Cookies!")
chirstmas_quotes+=("Watch out for the joly fat man! He sees you when you're sleeping, what a creep. [flutters eyes] Hotcha! Hotcha!")
chirstmas_quotes+=("Gingerbread men, I don't trust'em...")
chirstmas_quotes+=("Chestnuts roasting on an open fire...")
chirstmas_quotes+=("Milk and cookies, yum yum yum yum yum!")
chirstmas_quotes+=("Happy Holidays!")
chirstmas_quotes+=("Chocolate! Yum yum yum yum yum.")
chirstmas_quotes+=("Heh heh heh heh heh")
chirstmas_quotes+=("Oooh...cupcakes!")
chirstmas_quotes+=("My advice is...don't use dating apps, they have too many background checks!")
chirstmas_quotes+=("OooOoo I can see your git history...Hotcha! Hotcha!")

random_quote() {
  local quotes
  local month=$(LC_ALL=C date +%B)
  local day=$(LC_ALL=C date +%d)

  if [[ $month == "December" || ($month == "November" && $day -ge 20) ]]; then
    quotes=("${chirstmas_quotes[@]}")
  else
    quotes=("${default_quotes[@]}")
  fi

  local random=$RANDOM
  local size=${#quotes[@]}
  local index=$(($random % $size))
  local quote="${quotes[$index]} $@"

  echo $quote
}

random_quote
