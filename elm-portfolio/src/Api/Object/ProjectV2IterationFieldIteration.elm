-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.ProjectV2IterationFieldIteration exposing (..)

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


{-| The iteration's duration in days
-}
duration : SelectionSet Int Api.Object.ProjectV2IterationFieldIteration
duration =
    Object.selectionForField "Int" "duration" [] Decode.int


{-| The iteration's ID.
-}
id : SelectionSet String Api.Object.ProjectV2IterationFieldIteration
id =
    Object.selectionForField "String" "id" [] Decode.string


{-| The iteration's start date
-}
startDate : SelectionSet Api.ScalarCodecs.Date Api.Object.ProjectV2IterationFieldIteration
startDate =
    Object.selectionForField "ScalarCodecs.Date" "startDate" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDate |> .decoder)


{-| The iteration's title.
-}
title : SelectionSet String Api.Object.ProjectV2IterationFieldIteration
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| The iteration's html title.
-}
titleHTML : SelectionSet String Api.Object.ProjectV2IterationFieldIteration
titleHTML =
    Object.selectionForField "String" "titleHTML" [] Decode.string