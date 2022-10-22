-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.EnterpriseUserAccountMembershipRole exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible roles for enterprise membership.

  - Member - The user is a member of an organization in the enterprise.
  - Owner - The user is an owner of an organization in the enterprise.
  - Unaffiliated - The user is not an owner of the enterprise, and not a member or owner of any organizations in the enterprise; only for EMU-enabled enterprises.

-}
type EnterpriseUserAccountMembershipRole
    = Member
    | Owner
    | Unaffiliated


list : List EnterpriseUserAccountMembershipRole
list =
    [ Member, Owner, Unaffiliated ]


decoder : Decoder EnterpriseUserAccountMembershipRole
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "MEMBER" ->
                        Decode.succeed Member

                    "OWNER" ->
                        Decode.succeed Owner

                    "UNAFFILIATED" ->
                        Decode.succeed Unaffiliated

                    _ ->
                        Decode.fail ("Invalid EnterpriseUserAccountMembershipRole type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : EnterpriseUserAccountMembershipRole -> String
toString enum____ =
    case enum____ of
        Member ->
            "MEMBER"

        Owner ->
            "OWNER"

        Unaffiliated ->
            "UNAFFILIATED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe EnterpriseUserAccountMembershipRole
fromString enumString____ =
    case enumString____ of
        "MEMBER" ->
            Just Member

        "OWNER" ->
            Just Owner

        "UNAFFILIATED" ->
            Just Unaffiliated

        _ ->
            Nothing