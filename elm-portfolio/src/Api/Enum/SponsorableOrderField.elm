-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.SponsorableOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which sponsorable connections can be ordered.

  - Login - Order sponsorable entities by login (username).

-}
type SponsorableOrderField
    = Login


list : List SponsorableOrderField
list =
    [ Login ]


decoder : Decoder SponsorableOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "LOGIN" ->
                        Decode.succeed Login

                    _ ->
                        Decode.fail ("Invalid SponsorableOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : SponsorableOrderField -> String
toString enum____ =
    case enum____ of
        Login ->
            "LOGIN"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe SponsorableOrderField
fromString enumString____ =
    case enumString____ of
        "LOGIN" ->
            Just Login

        _ ->
            Nothing
