-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.DeploymentEnvironmentChangedEvent exposing (..)

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
    -> SelectionSet (Maybe decodesTo) Api.Object.DeploymentEnvironmentChangedEvent
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.DeploymentEnvironmentChangedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The deployment status that updated the deployment environment.
-}
deploymentStatus :
    SelectionSet decodesTo Api.Object.DeploymentStatus
    -> SelectionSet decodesTo Api.Object.DeploymentEnvironmentChangedEvent
deploymentStatus object____ =
    Object.selectionForCompositeField "deploymentStatus" [] object____ Basics.identity


id : SelectionSet Api.ScalarCodecs.Id Api.Object.DeploymentEnvironmentChangedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest :
    SelectionSet decodesTo Api.Object.PullRequest
    -> SelectionSet decodesTo Api.Object.DeploymentEnvironmentChangedEvent
pullRequest object____ =
    Object.selectionForCompositeField "pullRequest" [] object____ Basics.identity
