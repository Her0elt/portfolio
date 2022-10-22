-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.SetEnterpriseIdentityProviderPayload exposing (..)

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
clientMutationId : SelectionSet (Maybe String) Api.Object.SetEnterpriseIdentityProviderPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The identity provider for the enterprise.
-}
identityProvider :
    SelectionSet decodesTo Api.Object.EnterpriseIdentityProvider
    -> SelectionSet (Maybe decodesTo) Api.Object.SetEnterpriseIdentityProviderPayload
identityProvider object____ =
    Object.selectionForCompositeField "identityProvider" [] object____ (Basics.identity >> Decode.nullable)
