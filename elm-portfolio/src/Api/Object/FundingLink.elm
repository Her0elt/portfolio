-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.FundingLink exposing (..)

import Api.Enum.FundingPlatform
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


{-| The funding platform this link is for.
-}
platform : SelectionSet Api.Enum.FundingPlatform.FundingPlatform Api.Object.FundingLink
platform =
    Object.selectionForField "Enum.FundingPlatform.FundingPlatform" "platform" [] Api.Enum.FundingPlatform.decoder


{-| The configured URL for this funding link.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Object.FundingLink
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)
