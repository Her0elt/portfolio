-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Submodule exposing (..)

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


{-| The branch of the upstream submodule for tracking updates
-}
branch : SelectionSet (Maybe String) Api.Object.Submodule
branch =
    Object.selectionForField "(Maybe String)" "branch" [] (Decode.string |> Decode.nullable)


{-| The git URL of the submodule repository
-}
gitUrl : SelectionSet Api.ScalarCodecs.Uri Api.Object.Submodule
gitUrl =
    Object.selectionForField "ScalarCodecs.Uri" "gitUrl" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The name of the submodule in .gitmodules
-}
name : SelectionSet String Api.Object.Submodule
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The path in the superproject that this submodule is located in
-}
path : SelectionSet String Api.Object.Submodule
path =
    Object.selectionForField "String" "path" [] Decode.string


{-| The commit revision of the subproject repository being tracked by the submodule
-}
subprojectCommitOid : SelectionSet (Maybe Api.ScalarCodecs.GitObjectID) Api.Object.Submodule
subprojectCommitOid =
    Object.selectionForField "(Maybe ScalarCodecs.GitObjectID)" "subprojectCommitOid" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder |> Decode.nullable)