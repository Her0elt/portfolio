-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.ProjectV2ItemFieldValueOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which project v2 item field value connections can be ordered.

  - Position - Order project v2 item field values by the their position in the project

-}
type ProjectV2ItemFieldValueOrderField
    = Position


list : List ProjectV2ItemFieldValueOrderField
list =
    [ Position ]


decoder : Decoder ProjectV2ItemFieldValueOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "POSITION" ->
                        Decode.succeed Position

                    _ ->
                        Decode.fail ("Invalid ProjectV2ItemFieldValueOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectV2ItemFieldValueOrderField -> String
toString enum____ =
    case enum____ of
        Position ->
            "POSITION"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ProjectV2ItemFieldValueOrderField
fromString enumString____ =
    case enumString____ of
        "POSITION" ->
            Just Position

        _ ->
            Nothing
