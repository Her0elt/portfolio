-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.ProjectV2FieldOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which project v2 field connections can be ordered.

  - Position - Order project v2 fields by position
  - CreatedAt - Order project v2 fields by creation time
  - Name - Order project v2 fields by name

-}
type ProjectV2FieldOrderField
    = Position
    | CreatedAt
    | Name


list : List ProjectV2FieldOrderField
list =
    [ Position, CreatedAt, Name ]


decoder : Decoder ProjectV2FieldOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "POSITION" ->
                        Decode.succeed Position

                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "NAME" ->
                        Decode.succeed Name

                    _ ->
                        Decode.fail ("Invalid ProjectV2FieldOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectV2FieldOrderField -> String
toString enum____ =
    case enum____ of
        Position ->
            "POSITION"

        CreatedAt ->
            "CREATED_AT"

        Name ->
            "NAME"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ProjectV2FieldOrderField
fromString enumString____ =
    case enumString____ of
        "POSITION" ->
            Just Position

        "CREATED_AT" ->
            Just CreatedAt

        "NAME" ->
            Just Name

        _ ->
            Nothing