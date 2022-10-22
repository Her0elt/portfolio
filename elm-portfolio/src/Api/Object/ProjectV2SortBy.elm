-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.ProjectV2SortBy exposing (..)

import Api.Enum.OrderDirection
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


{-| The direction of the sorting. Possible values are ASC and DESC.
-}
direction : SelectionSet Api.Enum.OrderDirection.OrderDirection Api.Object.ProjectV2SortBy
direction =
    Object.selectionForField "Enum.OrderDirection.OrderDirection" "direction" [] Api.Enum.OrderDirection.decoder


{-| The field by which items are sorted.
-}
field :
    SelectionSet decodesTo Api.Object.ProjectV2Field
    -> SelectionSet decodesTo Api.Object.ProjectV2SortBy
field object____ =
    Object.selectionForCompositeField "field" [] object____ Basics.identity
