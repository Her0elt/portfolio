-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.FileViewedState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible viewed states of a file .

  - Dismissed - The file has new changes since last viewed.
  - Viewed - The file has been marked as viewed.
  - Unviewed - The file has not been marked as viewed.

-}
type FileViewedState
    = Dismissed
    | Viewed
    | Unviewed


list : List FileViewedState
list =
    [ Dismissed, Viewed, Unviewed ]


decoder : Decoder FileViewedState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "DISMISSED" ->
                        Decode.succeed Dismissed

                    "VIEWED" ->
                        Decode.succeed Viewed

                    "UNVIEWED" ->
                        Decode.succeed Unviewed

                    _ ->
                        Decode.fail ("Invalid FileViewedState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : FileViewedState -> String
toString enum____ =
    case enum____ of
        Dismissed ->
            "DISMISSED"

        Viewed ->
            "VIEWED"

        Unviewed ->
            "UNVIEWED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe FileViewedState
fromString enumString____ =
    case enumString____ of
        "DISMISSED" ->
            Just Dismissed

        "VIEWED" ->
            Just Viewed

        "UNVIEWED" ->
            Just Unviewed

        _ ->
            Nothing
