-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Reaction exposing (..)

import Api.Enum.ReactionContent
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


{-| Identifies the emoji reaction.
-}
content : SelectionSet Api.Enum.ReactionContent.ReactionContent Api.Object.Reaction
content =
    Object.selectionForField "Enum.ReactionContent.ReactionContent" "content" [] Api.Enum.ReactionContent.decoder


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Reaction
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.Object.Reaction
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Reaction
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The reactable piece of content
-}
reactable :
    SelectionSet decodesTo Api.Interface.Reactable
    -> SelectionSet decodesTo Api.Object.Reaction
reactable object____ =
    Object.selectionForCompositeField "reactable" [] object____ Basics.identity


{-| Identifies the user who created this reaction.
-}
user :
    SelectionSet decodesTo Api.Object.User
    -> SelectionSet (Maybe decodesTo) Api.Object.Reaction
user object____ =
    Object.selectionForCompositeField "user" [] object____ (Basics.identity >> Decode.nullable)