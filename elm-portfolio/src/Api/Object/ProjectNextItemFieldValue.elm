-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.ProjectNextItemFieldValue exposing (..)

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


{-| Identifies the date and time when the object was created.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.ProjectNextItemFieldValue
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who created the item.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
creator :
    SelectionSet decodesTo Api.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Api.Object.ProjectNextItemFieldValue
creator object____ =
    Object.selectionForCompositeField "creator" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the primary key from the database.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
databaseId : SelectionSet (Maybe Int) Api.Object.ProjectNextItemFieldValue
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.ProjectNextItemFieldValue
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The project field that contains this value.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
projectField :
    SelectionSet decodesTo Api.Object.ProjectNextField
    -> SelectionSet decodesTo Api.Object.ProjectNextItemFieldValue
projectField object____ =
    Object.selectionForCompositeField "projectField" [] object____ Basics.identity


{-| The project item that contains this value.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
projectItem :
    SelectionSet decodesTo Api.Object.ProjectNextItem
    -> SelectionSet decodesTo Api.Object.ProjectNextItemFieldValue
projectItem object____ =
    Object.selectionForCompositeField "projectItem" [] object____ Basics.identity


{-| Identifies the date and time when the object was last updated.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.ProjectNextItemFieldValue
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The value of a field
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.
-}
value : SelectionSet (Maybe String) Api.Object.ProjectNextItemFieldValue
value =
    Object.selectionForField "(Maybe String)" "value" [] (Decode.string |> Decode.nullable)