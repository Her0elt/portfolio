-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.IpAllowListEntry exposing (..)

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


{-| A single IP address or range of IP addresses in CIDR notation.
-}
allowListValue : SelectionSet String Api.Object.IpAllowListEntry
allowListValue =
    Object.selectionForField "String" "allowListValue" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.IpAllowListEntry
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.IpAllowListEntry
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether the entry is currently active.
-}
isActive : SelectionSet Bool Api.Object.IpAllowListEntry
isActive =
    Object.selectionForField "Bool" "isActive" [] Decode.bool


{-| The name of the IP allow list entry.
-}
name : SelectionSet (Maybe String) Api.Object.IpAllowListEntry
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The owner of the IP allow list entry.
-}
owner :
    SelectionSet decodesTo Api.Union.IpAllowListOwner
    -> SelectionSet decodesTo Api.Object.IpAllowListEntry
owner object____ =
    Object.selectionForCompositeField "owner" [] object____ Basics.identity


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.IpAllowListEntry
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
