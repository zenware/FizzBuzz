import Html exposing (Html, div, text)


fizzbuzz : Int -> List (Html a)
fizzbuzz to =
    let
        current =
            case ( to % 3, to % 5 ) of
                ( 0, 0 ) ->
                    "FizzBuzz"

                ( 0, _ ) ->
                    "Fizz"

                ( _, 0 ) ->
                    "Buzz"

                _ ->
                    toString to
    in
        case to of
            0 ->
                []

            _ ->
                fizzbuzz (to - 1) ++ [ div [] [ text current ] ]


main : Html a
main =
    div [] (fizzbuzz 100)
