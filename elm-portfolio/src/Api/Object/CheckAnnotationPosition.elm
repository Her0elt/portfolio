-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CheckAnnotationPosition exposing (..)

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


{-| Column number (1 indexed).
-}
column : SelectionSet (Maybe Int) Api.Object.CheckAnnotationPosition
column =
    Object.selectionForField "(Maybe Int)" "column" [] (Decode.int |> Decode.nullable)


{-| Line number (1 indexed).
-}
line : SelectionSet Int Api.Object.CheckAnnotationPosition
line =
    Object.selectionForField "Int" "line" [] Decode.int
