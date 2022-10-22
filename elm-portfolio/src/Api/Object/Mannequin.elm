-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Mannequin exposing (..)

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


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the GitHub App's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl :
    (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
    -> SelectionSet Api.ScalarCodecs.Uri Api.Object.Mannequin
avatarUrl fillInOptionals____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { size = Absent }

        optionalArgs____ =
            [ Argument.optional "size" filledInOptionals____.size Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs____ (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The user that has claimed the data attributed to this mannequin.
-}
claimant :
    SelectionSet decodesTo Api.Object.User
    -> SelectionSet (Maybe decodesTo) Api.Object.Mannequin
claimant object____ =
    Object.selectionForCompositeField "claimant" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Mannequin
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.Object.Mannequin
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The mannequin's email on the source instance.
-}
email : SelectionSet (Maybe String) Api.Object.Mannequin
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Mannequin
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The username of the actor.
-}
login : SelectionSet String Api.Object.Mannequin
login =
    Object.selectionForField "String" "login" [] Decode.string


{-| The HTML path to this resource.
-}
resourcePath : SelectionSet Api.ScalarCodecs.Uri Api.Object.Mannequin
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Mannequin
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The URL to this resource.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Object.Mannequin
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)
