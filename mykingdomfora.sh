#!/bin/bash

. functions/getword.sh

word="$(getword)"

firstLetter="$(echo ${word:0:1} | tr '[:upper:]' '[:lower:]')"

if [[ "$firstLetter" == "a" || "$firstLetter" == "e" || "$firstLetter" == "i" ||
      "$firstLetter" == "o" || "$firstLetter" == "u" ]]
then
  articleSmall="an"
  articleCaps="An"
else
  articleSmall="a"
  articleCaps="A"
fi

echo "$articleCaps $word, $articleSmall $word! My kingdom for $articleSmall $word!"