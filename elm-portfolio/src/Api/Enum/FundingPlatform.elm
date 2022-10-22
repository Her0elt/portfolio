-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.FundingPlatform exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible funding platforms for repository funding links.

  - Github - GitHub funding platform.
  - Patreon - Patreon funding platform.
  - OpenCollective - Open Collective funding platform.
  - KoFi - Ko-fi funding platform.
  - Tidelift - Tidelift funding platform.
  - CommunityBridge - Community Bridge funding platform.
  - Liberapay - Liberapay funding platform.
  - Issuehunt - IssueHunt funding platform.
  - Otechie - Otechie funding platform.
  - LfxCrowdfunding - LFX Crowdfunding funding platform.
  - Custom - Custom funding platform.

-}
type FundingPlatform
    = Github
    | Patreon
    | OpenCollective
    | KoFi
    | Tidelift
    | CommunityBridge
    | Liberapay
    | Issuehunt
    | Otechie
    | LfxCrowdfunding
    | Custom


list : List FundingPlatform
list =
    [ Github, Patreon, OpenCollective, KoFi, Tidelift, CommunityBridge, Liberapay, Issuehunt, Otechie, LfxCrowdfunding, Custom ]


decoder : Decoder FundingPlatform
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "GITHUB" ->
                        Decode.succeed Github

                    "PATREON" ->
                        Decode.succeed Patreon

                    "OPEN_COLLECTIVE" ->
                        Decode.succeed OpenCollective

                    "KO_FI" ->
                        Decode.succeed KoFi

                    "TIDELIFT" ->
                        Decode.succeed Tidelift

                    "COMMUNITY_BRIDGE" ->
                        Decode.succeed CommunityBridge

                    "LIBERAPAY" ->
                        Decode.succeed Liberapay

                    "ISSUEHUNT" ->
                        Decode.succeed Issuehunt

                    "OTECHIE" ->
                        Decode.succeed Otechie

                    "LFX_CROWDFUNDING" ->
                        Decode.succeed LfxCrowdfunding

                    "CUSTOM" ->
                        Decode.succeed Custom

                    _ ->
                        Decode.fail ("Invalid FundingPlatform type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : FundingPlatform -> String
toString enum____ =
    case enum____ of
        Github ->
            "GITHUB"

        Patreon ->
            "PATREON"

        OpenCollective ->
            "OPEN_COLLECTIVE"

        KoFi ->
            "KO_FI"

        Tidelift ->
            "TIDELIFT"

        CommunityBridge ->
            "COMMUNITY_BRIDGE"

        Liberapay ->
            "LIBERAPAY"

        Issuehunt ->
            "ISSUEHUNT"

        Otechie ->
            "OTECHIE"

        LfxCrowdfunding ->
            "LFX_CROWDFUNDING"

        Custom ->
            "CUSTOM"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe FundingPlatform
fromString enumString____ =
    case enumString____ of
        "GITHUB" ->
            Just Github

        "PATREON" ->
            Just Patreon

        "OPEN_COLLECTIVE" ->
            Just OpenCollective

        "KO_FI" ->
            Just KoFi

        "TIDELIFT" ->
            Just Tidelift

        "COMMUNITY_BRIDGE" ->
            Just CommunityBridge

        "LIBERAPAY" ->
            Just Liberapay

        "ISSUEHUNT" ->
            Just Issuehunt

        "OTECHIE" ->
            Just Otechie

        "LFX_CROWDFUNDING" ->
            Just LfxCrowdfunding

        "CUSTOM" ->
            Just Custom

        _ ->
            Nothing