-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.OrganizationInvitationType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible organization invitation types.

  - User - The invitation was to an existing user.
  - Email - The invitation was to an email address.

-}
type OrganizationInvitationType
    = User
    | Email


list : List OrganizationInvitationType
list =
    [ User, Email ]


decoder : Decoder OrganizationInvitationType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "USER" ->
                        Decode.succeed User

                    "EMAIL" ->
                        Decode.succeed Email

                    _ ->
                        Decode.fail ("Invalid OrganizationInvitationType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : OrganizationInvitationType -> String
toString enum____ =
    case enum____ of
        User ->
            "USER"

        Email ->
            "EMAIL"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe OrganizationInvitationType
fromString enumString____ =
    case enumString____ of
        "USER" ->
            Just User

        "EMAIL" ->
            Just Email

        _ ->
            Nothing
