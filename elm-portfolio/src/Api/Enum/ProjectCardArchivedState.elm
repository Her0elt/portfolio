-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.ProjectCardArchivedState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible archived states of a project card.

  - Archived - A project card that is archived
  - NotArchived - A project card that is not archived

-}
type ProjectCardArchivedState
    = Archived
    | NotArchived


list : List ProjectCardArchivedState
list =
    [ Archived, NotArchived ]


decoder : Decoder ProjectCardArchivedState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ARCHIVED" ->
                        Decode.succeed Archived

                    "NOT_ARCHIVED" ->
                        Decode.succeed NotArchived

                    _ ->
                        Decode.fail ("Invalid ProjectCardArchivedState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectCardArchivedState -> String
toString enum____ =
    case enum____ of
        Archived ->
            "ARCHIVED"

        NotArchived ->
            "NOT_ARCHIVED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ProjectCardArchivedState
fromString enumString____ =
    case enumString____ of
        "ARCHIVED" ->
            Just Archived

        "NOT_ARCHIVED" ->
            Just NotArchived

        _ ->
            Nothing
