-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CheckAnnotationSpan exposing (..)

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


{-| End position (inclusive).
-}
end :
    SelectionSet decodesTo Api.Object.CheckAnnotationPosition
    -> SelectionSet decodesTo Api.Object.CheckAnnotationSpan
end object____ =
    Object.selectionForCompositeField "end" [] object____ Basics.identity


{-| Start position (inclusive).
-}
start :
    SelectionSet decodesTo Api.Object.CheckAnnotationPosition
    -> SelectionSet decodesTo Api.Object.CheckAnnotationSpan
start object____ =
    Object.selectionForCompositeField "start" [] object____ Basics.identity