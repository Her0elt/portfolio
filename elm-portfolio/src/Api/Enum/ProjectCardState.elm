-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.ProjectCardState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Various content states of a ProjectCard

  - ContentOnly - The card has content only.
  - NoteOnly - The card has a note only.
  - Redacted - The card is redacted.

-}
type ProjectCardState
    = ContentOnly
    | NoteOnly
    | Redacted


list : List ProjectCardState
list =
    [ ContentOnly, NoteOnly, Redacted ]


decoder : Decoder ProjectCardState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CONTENT_ONLY" ->
                        Decode.succeed ContentOnly

                    "NOTE_ONLY" ->
                        Decode.succeed NoteOnly

                    "REDACTED" ->
                        Decode.succeed Redacted

                    _ ->
                        Decode.fail ("Invalid ProjectCardState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ProjectCardState -> String
toString enum____ =
    case enum____ of
        ContentOnly ->
            "CONTENT_ONLY"

        NoteOnly ->
            "NOTE_ONLY"

        Redacted ->
            "REDACTED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ProjectCardState
fromString enumString____ =
    case enumString____ of
        "CONTENT_ONLY" ->
            Just ContentOnly

        "NOTE_ONLY" ->
            Just NoteOnly

        "REDACTED" ->
            Just Redacted

        _ ->
            Nothing
