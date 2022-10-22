-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.SubscriptionState exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible states of a subscription.

  - Unsubscribed - The User is only notified when participating or @mentioned.
  - Subscribed - The User is notified of all conversations.
  - Ignored - The User is never notified.

-}
type SubscriptionState
    = Unsubscribed
    | Subscribed
    | Ignored


list : List SubscriptionState
list =
    [ Unsubscribed, Subscribed, Ignored ]


decoder : Decoder SubscriptionState
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "UNSUBSCRIBED" ->
                        Decode.succeed Unsubscribed

                    "SUBSCRIBED" ->
                        Decode.succeed Subscribed

                    "IGNORED" ->
                        Decode.succeed Ignored

                    _ ->
                        Decode.fail ("Invalid SubscriptionState type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : SubscriptionState -> String
toString enum____ =
    case enum____ of
        Unsubscribed ->
            "UNSUBSCRIBED"

        Subscribed ->
            "SUBSCRIBED"

        Ignored ->
            "IGNORED"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe SubscriptionState
fromString enumString____ =
    case enumString____ of
        "UNSUBSCRIBED" ->
            Just Unsubscribed

        "SUBSCRIBED" ->
            Just Subscribed

        "IGNORED" ->
            Just Ignored

        _ ->
            Nothing
