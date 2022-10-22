-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.MilestoneOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which milestone connections can be ordered.

  - DueDate - Order milestones by when they are due.
  - CreatedAt - Order milestones by when they were created.
  - UpdatedAt - Order milestones by when they were last updated.
  - Number - Order milestones by their number.

-}
type MilestoneOrderField
    = DueDate
    | CreatedAt
    | UpdatedAt
    | Number


list : List MilestoneOrderField
list =
    [ DueDate, CreatedAt, UpdatedAt, Number ]


decoder : Decoder MilestoneOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "DUE_DATE" ->
                        Decode.succeed DueDate

                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    "NUMBER" ->
                        Decode.succeed Number

                    _ ->
                        Decode.fail ("Invalid MilestoneOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : MilestoneOrderField -> String
toString enum____ =
    case enum____ of
        DueDate ->
            "DUE_DATE"

        CreatedAt ->
            "CREATED_AT"

        UpdatedAt ->
            "UPDATED_AT"

        Number ->
            "NUMBER"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe MilestoneOrderField
fromString enumString____ =
    case enumString____ of
        "DUE_DATE" ->
            Just DueDate

        "CREATED_AT" ->
            Just CreatedAt

        "UPDATED_AT" ->
            Just UpdatedAt

        "NUMBER" ->
            Just Number

        _ ->
            Nothing