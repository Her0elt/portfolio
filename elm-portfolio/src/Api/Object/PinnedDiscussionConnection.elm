-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PinnedDiscussionConnection exposing (..)

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


{-| A list of edges.
-}
edges :
    SelectionSet decodesTo Api.Object.PinnedDiscussionEdge
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.Object.PinnedDiscussionConnection
edges object____ =
    Object.selectionForCompositeField "edges" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes :
    SelectionSet decodesTo Api.Object.PinnedDiscussion
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.Object.PinnedDiscussionConnection
nodes object____ =
    Object.selectionForCompositeField "nodes" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo :
    SelectionSet decodesTo Api.Object.PageInfo
    -> SelectionSet decodesTo Api.Object.PinnedDiscussionConnection
pageInfo object____ =
    Object.selectionForCompositeField "pageInfo" [] object____ Basics.identity


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int Api.Object.PinnedDiscussionConnection
totalCount =
    Object.selectionForField "Int" "totalCount" [] Decode.int
