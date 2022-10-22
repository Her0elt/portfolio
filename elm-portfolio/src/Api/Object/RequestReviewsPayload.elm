-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.RequestReviewsPayload exposing (..)

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
    -> SelectionSet (Maybe decodesTo) Api.Object.RequestReviewsPayload
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (Basics.identity >> Decode.nullable)


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Api.Object.RequestReviewsPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The pull request that is getting requests.
-}
pullRequest :
    SelectionSet decodesTo Api.Object.PullRequest
    -> SelectionSet (Maybe decodesTo) Api.Object.RequestReviewsPayload
pullRequest object____ =
    Object.selectionForCompositeField "pullRequest" [] object____ (Basics.identity >> Decode.nullable)


{-| The edge from the pull request to the requested reviewers.
-}
requestedReviewersEdge :
    SelectionSet decodesTo Api.Object.UserEdge
    -> SelectionSet (Maybe decodesTo) Api.Object.RequestReviewsPayload
requestedReviewersEdge object____ =
    Object.selectionForCompositeField "requestedReviewersEdge" [] object____ (Basics.identity >> Decode.nullable)
