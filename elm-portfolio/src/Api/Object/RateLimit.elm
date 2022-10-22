-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.RateLimit exposing (..)

import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.ScalarCodecs
import Api.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The point cost for the current query counting against the rate limit.
-}
cost : SelectionSet Int Api.Object.RateLimit
cost =
    Object.selectionForField "Int" "cost" [] Decode.int


{-| The maximum number of points the client is permitted to consume in a 60 minute window.
-}
limit : SelectionSet Int Api.Object.RateLimit
limit =
    Object.selectionForField "Int" "limit" [] Decode.int


{-| The maximum number of nodes this query may return
-}
nodeCount : SelectionSet Int Api.Object.RateLimit
nodeCount =
    Object.selectionForField "Int" "nodeCount" [] Decode.int


{-| The number of points remaining in the current rate limit window.
-}
remaining : SelectionSet Int Api.Object.RateLimit
remaining =
    Object.selectionForField "Int" "remaining" [] Decode.int


{-| The time at which the current rate limit window resets in UTC epoch seconds.
-}
resetAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.RateLimit
resetAt =
    Object.selectionForField "ScalarCodecs.DateTime" "resetAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of points used in the current rate limit window.
-}
used : SelectionSet Int Api.Object.RateLimit
used =
    Object.selectionForField "Int" "used" [] Decode.int