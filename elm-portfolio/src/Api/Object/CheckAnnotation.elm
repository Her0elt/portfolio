-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CheckAnnotation exposing (..)

import Api.Enum.CheckAnnotationLevel
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


{-| The annotation's severity level.
-}
annotationLevel : SelectionSet (Maybe Api.Enum.CheckAnnotationLevel.CheckAnnotationLevel) Api.Object.CheckAnnotation
annotationLevel =
    Object.selectionForField "(Maybe Enum.CheckAnnotationLevel.CheckAnnotationLevel)" "annotationLevel" [] (Api.Enum.CheckAnnotationLevel.decoder |> Decode.nullable)


{-| The path to the file that this annotation was made on.
-}
blobUrl : SelectionSet Api.ScalarCodecs.Uri Api.Object.CheckAnnotation
blobUrl =
    Object.selectionForField "ScalarCodecs.Uri" "blobUrl" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.Object.CheckAnnotation
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The position of this annotation.
-}
location :
    SelectionSet decodesTo Api.Object.CheckAnnotationSpan
    -> SelectionSet decodesTo Api.Object.CheckAnnotation
location object____ =
    Object.selectionForCompositeField "location" [] object____ Basics.identity


{-| The annotation's message.
-}
message : SelectionSet String Api.Object.CheckAnnotation
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| The path that this annotation was made on.
-}
path : SelectionSet String Api.Object.CheckAnnotation
path =
    Object.selectionForField "String" "path" [] Decode.string


{-| Additional information about the annotation.
-}
rawDetails : SelectionSet (Maybe String) Api.Object.CheckAnnotation
rawDetails =
    Object.selectionForField "(Maybe String)" "rawDetails" [] (Decode.string |> Decode.nullable)


{-| The annotation's title
-}
title : SelectionSet (Maybe String) Api.Object.CheckAnnotation
title =
    Object.selectionForField "(Maybe String)" "title" [] (Decode.string |> Decode.nullable)
