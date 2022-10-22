-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.LinkRepositoryToProjectPayload exposing (..)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Api.Object.LinkRepositoryToProjectPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The linked Project.
-}
project :
    SelectionSet decodesTo Api.Object.Project
    -> SelectionSet (Maybe decodesTo) Api.Object.LinkRepositoryToProjectPayload
project object____ =
    Object.selectionForCompositeField "project" [] object____ (Basics.identity >> Decode.nullable)


{-| The linked Repository.
-}
repository :
    SelectionSet decodesTo Api.Object.Repository
    -> SelectionSet (Maybe decodesTo) Api.Object.LinkRepositoryToProjectPayload
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ (Basics.identity >> Decode.nullable)
