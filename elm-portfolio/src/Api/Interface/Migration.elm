-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.Migration exposing (..)

import Api.Enum.MigrationState
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onRepositoryMigration : SelectionSet decodesTo Api.Object.RepositoryMigration
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.Migration
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "RepositoryMigration" selections____.onRepositoryMigration
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepositoryMigration = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The Octoshift migration flag to continue on error.
-}
continueOnError : SelectionSet Bool Api.Interface.Migration
continueOnError =
    Object.selectionForField "Bool" "continueOnError" [] Decode.bool


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Interface.Migration
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe String) Api.Interface.Migration
databaseId =
    Object.selectionForField "(Maybe String)" "databaseId" [] (Decode.string |> Decode.nullable)


{-| The reason the migration failed.
-}
failureReason : SelectionSet (Maybe String) Api.Interface.Migration
failureReason =
    Object.selectionForField "(Maybe String)" "failureReason" [] (Decode.string |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Interface.Migration
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The URL for the migration log (expires 1 day after migration completes).
-}
migrationLogUrl : SelectionSet (Maybe Api.ScalarCodecs.Uri) Api.Interface.Migration
migrationLogUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "migrationLogUrl" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The Octoshift migration source.
-}
migrationSource :
    SelectionSet decodesTo Api.Object.MigrationSource
    -> SelectionSet decodesTo Api.Interface.Migration
migrationSource object____ =
    Object.selectionForCompositeField "migrationSource" [] object____ Basics.identity


{-| The target repository name.
-}
repositoryName : SelectionSet String Api.Interface.Migration
repositoryName =
    Object.selectionForField "String" "repositoryName" [] Decode.string


{-| The Octoshift migration source URL.
-}
sourceUrl : SelectionSet Api.ScalarCodecs.Uri Api.Interface.Migration
sourceUrl =
    Object.selectionForField "ScalarCodecs.Uri" "sourceUrl" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The Octoshift migration state.
-}
state : SelectionSet Api.Enum.MigrationState.MigrationState Api.Interface.Migration
state =
    Object.selectionForField "Enum.MigrationState.MigrationState" "state" [] Api.Enum.MigrationState.decoder