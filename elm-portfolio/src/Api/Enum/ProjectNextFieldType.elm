-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.ProjectNextFieldType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The type of a project next field.

  - Assignees - Assignees
  - LinkedPullRequests - Linked Pull Requests
  - Reviewers - Reviewers
  - Labels - Labels
  - Milestone - Milestone
  - Repository - Repository
  - Title - Title
  - Text - Text
  - SingleSelect - Single Select
  - Number - Number
  - Date - Date
  - Iteration - Iteration
  - Tracks - Tracks

-}
type ProjectNextFieldType
    = Assignees
    | LinkedPullRequests
    | Reviewers
    | Labels
    | Milestone
    | Repository
    | Title
    | Text
    | SingleSelect
    | Number
    | Date
    | Iteration
    | Tracks


list : List ProjectNextFieldType
list =
    [ Assignees, LinkedPullRequests, Reviewers, Labels, Milestone, Repository, Title, Text, SingleSelect, Number, Date, Iteration, Tracks ]


decoder : Decoder ProjectNextFieldType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ASSIGNEES" ->
                        Decode.succeed Assignees

                    "LINKED_PULL_REQUESTS" ->
                        Decode.succeed LinkedPullRequests

                    "REVIEWERS" ->
                        Decode.succeed Reviewers

                    "LABELS" ->
                        Decode.succeed Labels

                    "MILESTONE" ->
                        Decode.succeed Milestone

                    "REPOSITORY" ->
                        Decode.succeed Repository

                    "TITLE" ->
                        Decode.succeed Title

                    "TEXT" ->
                        Decode.succeed Text

                    "SINGLE_SELECT" ->
                        Decode.succeed SingleSelect

                    "NUMBER" ->
                        Decode.succeed Number

                    "DATE" ->
                        Decode.succeed Date

                    "ITERATION" ->
                        Decode.succeed Iteration

                    "TRACKS" ->
                        Decode.succeed Tracks

                    _ ->
                        Decode.fail ("Invalid ProjectNextFieldType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectNextFieldType -> String
toString enum____ =
    case enum____ of
        Assignees ->
            "ASSIGNEES"

        LinkedPullRequests ->
            "LINKED_PULL_REQUESTS"

        Reviewers ->
            "REVIEWERS"

        Labels ->
            "LABELS"

        Milestone ->
            "MILESTONE"

        Repository ->
            "REPOSITORY"

        Title ->
            "TITLE"

        Text ->
            "TEXT"

        SingleSelect ->
            "SINGLE_SELECT"

        Number ->
            "NUMBER"

        Date ->
            "DATE"

        Iteration ->
            "ITERATION"

        Tracks ->
            "TRACKS"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ProjectNextFieldType
fromString enumString____ =
    case enumString____ of
        "ASSIGNEES" ->
            Just Assignees

        "LINKED_PULL_REQUESTS" ->
            Just LinkedPullRequests

        "REVIEWERS" ->
            Just Reviewers

        "LABELS" ->
            Just Labels

        "MILESTONE" ->
            Just Milestone

        "REPOSITORY" ->
            Just Repository

        "TITLE" ->
            Just Title

        "TEXT" ->
            Just Text

        "SINGLE_SELECT" ->
            Just SingleSelect

        "NUMBER" ->
            Just Number

        "DATE" ->
            Just Date

        "ITERATION" ->
            Just Iteration

        "TRACKS" ->
            Just Tracks

        _ ->
            Nothing
