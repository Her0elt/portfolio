-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.EnterpriseServerUserAccountOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which Enterprise Server user account connections can be ordered.

  - Login - Order user accounts by login
  - RemoteCreatedAt - Order user accounts by creation time on the Enterprise Server installation

-}
type EnterpriseServerUserAccountOrderField
    = Login
    | RemoteCreatedAt


list : List EnterpriseServerUserAccountOrderField
list =
    [ Login, RemoteCreatedAt ]


decoder : Decoder EnterpriseServerUserAccountOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "LOGIN" ->
                        Decode.succeed Login

                    "REMOTE_CREATED_AT" ->
                        Decode.succeed RemoteCreatedAt

                    _ ->
                        Decode.fail ("Invalid EnterpriseServerUserAccountOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : EnterpriseServerUserAccountOrderField -> String
toString enum____ =
    case enum____ of
        Login ->
            "LOGIN"

        RemoteCreatedAt ->
            "REMOTE_CREATED_AT"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe EnterpriseServerUserAccountOrderField
fromString enumString____ =
    case enumString____ of
        "LOGIN" ->
            Just Login

        "REMOTE_CREATED_AT" ->
            Just RemoteCreatedAt

        _ ->
            Nothing