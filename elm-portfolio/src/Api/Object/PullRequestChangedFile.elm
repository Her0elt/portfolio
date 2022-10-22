-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PullRequestChangedFile exposing (..)

import Api.Enum.FileViewedState
import Api.Enum.PatchStatus
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


{-| The number of additions to the file.
-}
additions : SelectionSet Int Api.Object.PullRequestChangedFile
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


{-| How the file was changed in this PullRequest
-}
changeType : SelectionSet Api.Enum.PatchStatus.PatchStatus Api.Object.PullRequestChangedFile
changeType =
    Object.selectionForField "Enum.PatchStatus.PatchStatus" "changeType" [] Api.Enum.PatchStatus.decoder


{-| The number of deletions to the file.
-}
deletions : SelectionSet Int Api.Object.PullRequestChangedFile
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


{-| The path of the file.
-}
path : SelectionSet String Api.Object.PullRequestChangedFile
path =
    Object.selectionForField "String" "path" [] Decode.string


{-| The state of the file for the viewer.
-}
viewerViewedState : SelectionSet Api.Enum.FileViewedState.FileViewedState Api.Object.PullRequestChangedFile
viewerViewedState =
    Object.selectionForField "Enum.FileViewedState.FileViewedState" "viewerViewedState" [] Api.Enum.FileViewedState.decoder