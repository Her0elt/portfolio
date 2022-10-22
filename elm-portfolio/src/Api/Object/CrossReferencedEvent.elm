-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CrossReferencedEvent exposing (..)

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


{-| Identifies the actor who performed the event.
-}
actor :
    SelectionSet decodesTo Api.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Api.Object.CrossReferencedEvent
actor object____ =
    Object.selectionForCompositeField "actor" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.CrossReferencedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.CrossReferencedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Reference originated in a different repository.
-}
isCrossRepository : SelectionSet Bool Api.Object.CrossReferencedEvent
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


{-| Identifies when the reference was made.
-}
referencedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.CrossReferencedEvent
referencedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "referencedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet Api.ScalarCodecs.Uri Api.Object.CrossReferencedEvent
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Issue or pull request that made the reference.
-}
source :
    SelectionSet decodesTo Api.Union.ReferencedSubject
    -> SelectionSet decodesTo Api.Object.CrossReferencedEvent
source object____ =
    Object.selectionForCompositeField "source" [] object____ Basics.identity


{-| Issue or pull request to which the reference was made.
-}
target :
    SelectionSet decodesTo Api.Union.ReferencedSubject
    -> SelectionSet decodesTo Api.Object.CrossReferencedEvent
target object____ =
    Object.selectionForCompositeField "target" [] object____ Basics.identity


{-| The HTTP URL for this pull request.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Object.CrossReferencedEvent
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Checks if the target will be closed when the source is merged.
-}
willCloseTarget : SelectionSet Bool Api.Object.CrossReferencedEvent
willCloseTarget =
    Object.selectionForField "Bool" "willCloseTarget" [] Decode.bool
