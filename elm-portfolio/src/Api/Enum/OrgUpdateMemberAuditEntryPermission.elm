-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.OrgUpdateMemberAuditEntryPermission exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The permissions available to members on an Organization.

  - Read - Can read and clone repositories.
  - Admin - Can read, clone, push, and add collaborators to repositories.

-}
type OrgUpdateMemberAuditEntryPermission
    = Read
    | Admin


list : List OrgUpdateMemberAuditEntryPermission
list =
    [ Read, Admin ]


decoder : Decoder OrgUpdateMemberAuditEntryPermission
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "READ" ->
                        Decode.succeed Read

                    "ADMIN" ->
                        Decode.succeed Admin

                    _ ->
                        Decode.fail ("Invalid OrgUpdateMemberAuditEntryPermission type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : OrgUpdateMemberAuditEntryPermission -> String
toString enum____ =
    case enum____ of
        Read ->
            "READ"

        Admin ->
            "ADMIN"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OrgUpdateMemberAuditEntryPermission
fromString enumString____ =
    case enumString____ of
        "READ" ->
            Just Read

        "ADMIN" ->
            Just Admin

        _ ->
            Nothing
