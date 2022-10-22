-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.AutoMergeDisabledEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor :
    SelectionSet decodesTo Api.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Api.Object.AutoMergeDisabledEvent
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.AutoMergeDisabledEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The user who disabled auto-merge for this Pull Request
-}
disabler :
    SelectionSet decodesTo Api.Object.User
    -> SelectionSet (Maybe decodesTo) Api.Object.AutoMergeDisabledEvent
disabler object____ =
    Object.selectionForCompositeField "disabler" [] object____ (Basics.identity >> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.AutoMergeDisabledEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event
-}
pullRequest :
    SelectionSet decodesTo Api.Object.PullRequest
    -> SelectionSet (Maybe decodesTo) Api.Object.AutoMergeDisabledEvent
pullRequest object____ =
    Object.selectionForCompositeField "pullRequest" [] object____ (Basics.identity >> Decode.nullable)


{-| The reason auto-merge was disabled
-}
reason : SelectionSet (Maybe String) Api.Object.AutoMergeDisabledEvent
reason =
    Object.selectionForField "(Maybe String)" "reason" [] (Decode.string |> Decode.nullable)


{-| The reason\_code relating to why auto-merge was disabled
-}
reasonCode : SelectionSet (Maybe String) Api.Object.AutoMergeDisabledEvent
reasonCode =
    Object.selectionForField "(Maybe String)" "reasonCode" [] (Decode.string |> Decode.nullable)
