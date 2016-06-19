module Tests exposing (..)

import ElmTest exposing (..)
import Html exposing (Html, pre, text)
import FizzBuzz

tests =
    suite "FizzBuzz"
        [ test "Number 1 Say 1" (assertEqual "1" (FizzBuzz.say 1))
        , test "Number 2 Say 2" (assertEqual "2" (FizzBuzz.say 2))
        , test "Number 3 Say Fizz" (assertEqual "Fizz" (FizzBuzz.say 3))
        , test "Number 5 Say Buzz" (assertEqual "Buzz" (FizzBuzz.say 5))
        , test "Number 6 Say Fizz" (assertEqual "Fizz" (FizzBuzz.say 6))
        , test "Number 9 Say Fizz" (assertEqual "Fizz" (FizzBuzz.say 9))
        , test "Number 10 Say Buzz" (assertEqual "Buzz" (FizzBuzz.say 10))
        , test "Number 15 Say FizzBuzz" (assertEqual "FizzBuzz" (FizzBuzz.say 15))
        , test "Number 30 Say FizzBuzz" (assertEqual "FizzBuzz" (FizzBuzz.say 30))
        ]

main =
    pre [] [text (stringRunner tests)]
