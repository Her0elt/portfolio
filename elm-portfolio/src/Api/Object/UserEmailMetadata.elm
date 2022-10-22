-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.UserEmailMetadata exposing (..)

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


{-| Boolean to identify primary emails
-}
primary : SelectionSet (Maybe Bool) Api.Object.UserEmailMetadata
primary =
    Object.selectionForField "(Maybe Bool)" "primary" [] (Decode.bool |> Decode.nullable)


{-| Type of email
-}
type_ : SelectionSet (Maybe String) Api.Object.UserEmailMetadata
type_ =
    Object.selectionForField "(Maybe String)" "type" [] (Decode.string |> Decode.nullable)


{-| Email id
-}
value : SelectionSet String Api.Object.UserEmailMetadata
value =
    Object.selectionForField "String" "value" [] Decode.string