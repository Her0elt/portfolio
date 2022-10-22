-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.PullRequestReviewState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a pull request review.

  - Pending - A review that has not yet been submitted.
  - Commented - An informational review.
  - Approved - A review allowing the pull request to merge.
  - ChangesRequested - A review blocking the pull request from merging.
  - Dismissed - A review that has been dismissed.

-}
type PullRequestReviewState
    = Pending
    | Commented
    | Approved
    | ChangesRequested
    | Dismissed


list : List PullRequestReviewState
list =
    [ Pending, Commented, Approved, ChangesRequested, Dismissed ]


decoder : Decoder PullRequestReviewState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PENDING" ->
                        Decode.succeed Pending

                    "COMMENTED" ->
                        Decode.succeed Commented

                    "APPROVED" ->
                        Decode.succeed Approved

                    "CHANGES_REQUESTED" ->
                        Decode.succeed ChangesRequested

                    "DISMISSED" ->
                        Decode.succeed Dismissed

                    _ ->
                        Decode.fail ("Invalid PullRequestReviewState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : PullRequestReviewState -> String
toString enum____ =
    case enum____ of
        Pending ->
            "PENDING"

        Commented ->
            "COMMENTED"

        Approved ->
            "APPROVED"

        ChangesRequested ->
            "CHANGES_REQUESTED"

        Dismissed ->
            "DISMISSED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe PullRequestReviewState
fromString enumString____ =
    case enumString____ of
        "PENDING" ->
            Just Pending

        "COMMENTED" ->
            Just Commented

        "APPROVED" ->
            Just Approved

        "CHANGES_REQUESTED" ->
            Just ChangesRequested

        "DISMISSED" ->
            Just Dismissed

        _ ->
            Nothing
