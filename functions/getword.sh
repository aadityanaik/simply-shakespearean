getword() {
  # Check if the dictionary is installed
  if ! [ -f /usr/share/dict/american-english ]
  then
    echo "Couldn't find the dictionary"
  else
    dictionary="/usr/share/dict/american-english"
  fi

  # Get a random word from dictionary
  numWords=$(wc -w $dictionary | awk '{ print $1; }')
  numSelect=$(shuf -i 1-$numWords -n 1)
  selectedword=$(sed "${numSelect}q;d" $dictionary)

  # Removing the possessive apostrophe
  selectedword="${selectedword//\'s/}"

  echo "$selectedword"
}