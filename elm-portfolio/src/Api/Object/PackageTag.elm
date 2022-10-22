-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PackageTag exposing (..)

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


id : SelectionSet Api.ScalarCodecs.Id Api.Object.PackageTag
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the tag name of the version.
-}
name : SelectionSet String Api.Object.PackageTag
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Version that the tag is associated with.
-}
version :
    SelectionSet decodesTo Api.Object.PackageVersion
    -> SelectionSet (Maybe decodesTo) Api.Object.PackageTag
version object____ =
    Object.selectionForCompositeField "version" [] object____ (Basics.identity >> Decode.nullable)
