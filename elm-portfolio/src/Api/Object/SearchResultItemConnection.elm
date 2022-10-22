-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.SearchResultItemConnection exposing (..)

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


{-| The total number of pieces of code that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
codeCount : SelectionSet Int Api.Object.SearchResultItemConnection
codeCount =
    Object.selectionForField "Int" "codeCount" [] Decode.int


{-| The total number of discussions that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
discussionCount : SelectionSet Int Api.Object.SearchResultItemConnection
discussionCount =
    Object.selectionForField "Int" "discussionCount" [] Decode.int


{-| A list of edges.
-}
edges :
    SelectionSet decodesTo Api.Object.SearchResultItemEdge
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.Object.SearchResultItemConnection
edges object____ =
    Object.selectionForCompositeField "edges" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| The total number of issues that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
issueCount : SelectionSet Int Api.Object.SearchResultItemConnection
issueCount =
    Object.selectionForField "Int" "issueCount" [] Decode.int


{-| A list of nodes.
-}
nodes :
    SelectionSet decodesTo Api.Union.SearchResultItem
    -> SelectionSet (Maybe (List (Maybe decodesTo))) Api.Object.SearchResultItemConnection
nodes object____ =
    Object.selectionForCompositeField "nodes" [] object____ (Basics.identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo :
    SelectionSet decodesTo Api.Object.PageInfo
    -> SelectionSet decodesTo Api.Object.SearchResultItemConnection
pageInfo object____ =
    Object.selectionForCompositeField "pageInfo" [] object____ Basics.identity


{-| The total number of repositories that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
repositoryCount : SelectionSet Int Api.Object.SearchResultItemConnection
repositoryCount =
    Object.selectionForField "Int" "repositoryCount" [] Decode.int


{-| The total number of users that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
userCount : SelectionSet Int Api.Object.SearchResultItemConnection
userCount =
    Object.selectionForField "Int" "userCount" [] Decode.int


{-| The total number of wiki pages that matched the search query. Regardless of the total number of matches, a maximum of 1,000 results will be available across all types.
-}
wikiCount : SelectionSet Int Api.Object.SearchResultItemConnection
wikiCount =
    Object.selectionForField "Int" "wikiCount" [] Decode.int