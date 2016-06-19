module FizzBuzz exposing (..)

say number =
    if haveThreeAndFiveAsFactor number then
        "FizzBuzz"
    else if haveThreeAsFactor number then
        "Fizz"
    else if haveFiveAsFactor number then
        "Buzz"
    else
        toString number

haveThreeAndFiveAsFactor number =
    haveThreeAsFactor number && haveFiveAsFactor number

haveThreeAsFactor number =
    (%) number 3 == 0

haveFiveAsFactor number =
    (%) number 5 == 0
