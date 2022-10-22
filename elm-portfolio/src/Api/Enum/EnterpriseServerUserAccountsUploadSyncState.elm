-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.EnterpriseServerUserAccountsUploadSyncState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Synchronization state of the Enterprise Server user accounts upload

  - Pending - The synchronization of the upload is pending.
  - Success - The synchronization of the upload succeeded.
  - Failure - The synchronization of the upload failed.

-}
type EnterpriseServerUserAccountsUploadSyncState
    = Pending
    | Success
    | Failure


list : List EnterpriseServerUserAccountsUploadSyncState
list =
    [ Pending, Success, Failure ]


decoder : Decoder EnterpriseServerUserAccountsUploadSyncState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PENDING" ->
                        Decode.succeed Pending

                    "SUCCESS" ->
                        Decode.succeed Success

                    "FAILURE" ->
                        Decode.succeed Failure

                    _ ->
                        Decode.fail ("Invalid EnterpriseServerUserAccountsUploadSyncState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : EnterpriseServerUserAccountsUploadSyncState -> String
toString enum____ =
    case enum____ of
        Pending ->
            "PENDING"

        Success ->
            "SUCCESS"

        Failure ->
            "FAILURE"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe EnterpriseServerUserAccountsUploadSyncState
fromString enumString____ =
    case enumString____ of
        "PENDING" ->
            Just Pending

        "SUCCESS" ->
            Just Success

        "FAILURE" ->
            Just Failure

        _ ->
            Nothing
