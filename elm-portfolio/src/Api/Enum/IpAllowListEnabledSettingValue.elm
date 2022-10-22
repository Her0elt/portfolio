-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.IpAllowListEnabledSettingValue exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible values for the IP allow list enabled setting.

  - Enabled - The setting is enabled for the owner.
  - Disabled - The setting is disabled for the owner.

-}
type IpAllowListEnabledSettingValue
    = Enabled
    | Disabled


list : List IpAllowListEnabledSettingValue
list =
    [ Enabled, Disabled ]


decoder : Decoder IpAllowListEnabledSettingValue
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ENABLED" ->
                        Decode.succeed Enabled

                    "DISABLED" ->
                        Decode.succeed Disabled

                    _ ->
                        Decode.fail ("Invalid IpAllowListEnabledSettingValue type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : IpAllowListEnabledSettingValue -> String
toString enum____ =
    case enum____ of
        Enabled ->
            "ENABLED"

        Disabled ->
            "DISABLED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe IpAllowListEnabledSettingValue
fromString enumString____ =
    case enumString____ of
        "ENABLED" ->
            Just Enabled

        "DISABLED" ->
            Just Disabled

        _ ->
            Nothing
