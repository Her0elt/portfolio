-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.ReactorEdge exposing (..)

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


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String Api.Object.ReactorEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| The author of the reaction.
-}
node :
    SelectionSet decodesTo Api.Union.Reactor
    -> SelectionSet decodesTo Api.Object.ReactorEdge
node object____ =
    Object.selectionForCompositeField "node" [] object____ Basics.identity


{-| The moment when the user made the reaction.
-}
reactedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.ReactorEdge
reactedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "reactedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
