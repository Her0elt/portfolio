-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.AutoMergeRequest exposing (..)

import Api.Enum.PullRequestMergeMethod
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


{-| The email address of the author of this auto-merge request.
-}
authorEmail : SelectionSet (Maybe String) Api.Object.AutoMergeRequest
authorEmail =
    Object.selectionForField "(Maybe String)" "authorEmail" [] (Decode.string |> Decode.nullable)


{-| The commit message of the auto-merge request. If a merge queue is required by the base branch, this value will be set by the merge queue when merging.
-}
commitBody : SelectionSet (Maybe String) Api.Object.AutoMergeRequest
commitBody =
    Object.selectionForField "(Maybe String)" "commitBody" [] (Decode.string |> Decode.nullable)


{-| The commit title of the auto-merge request. If a merge queue is required by the base branch, this value will be set by the merge queue when merging
-}
commitHeadline : SelectionSet (Maybe String) Api.Object.AutoMergeRequest
commitHeadline =
    Object.selectionForField "(Maybe String)" "commitHeadline" [] (Decode.string |> Decode.nullable)


{-| When was this auto-merge request was enabled.
-}
enabledAt : SelectionSet (Maybe Api.ScalarCodecs.DateTime) Api.Object.AutoMergeRequest
enabledAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "enabledAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The actor who created the auto-merge request.
-}
enabledBy :
    SelectionSet decodesTo Api.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Api.Object.AutoMergeRequest
enabledBy object____ =
    Object.selectionForCompositeField "enabledBy" [] object____ (Basics.identity >> Decode.nullable)


{-| The merge method of the auto-merge request. If a merge queue is required by the base branch, this value will be set by the merge queue when merging.
-}
mergeMethod : SelectionSet Api.Enum.PullRequestMergeMethod.PullRequestMergeMethod Api.Object.AutoMergeRequest
mergeMethod =
    Object.selectionForField "Enum.PullRequestMergeMethod.PullRequestMergeMethod" "mergeMethod" [] Api.Enum.PullRequestMergeMethod.decoder


{-| The pull request that this auto-merge request is set against.
-}
pullRequest :
    SelectionSet decodesTo Api.Object.PullRequest
    -> SelectionSet decodesTo Api.Object.AutoMergeRequest
pullRequest object____ =
    Object.selectionForCompositeField "pullRequest" [] object____ Basics.identity
