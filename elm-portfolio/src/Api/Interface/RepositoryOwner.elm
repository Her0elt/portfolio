-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.RepositoryOwner exposing (..)

import Api.Enum.RepositoryAffiliation
import Api.Enum.RepositoryPrivacy
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
    { onOrganization : SelectionSet decodesTo Api.Object.Organization
    , onUser : SelectionSet decodesTo Api.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.RepositoryOwner
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Organization" selections____.onOrganization
        , Object.buildFragment "User" selections____.onUser
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the owner's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl :
    (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
    -> SelectionSet Api.ScalarCodecs.Uri Api.Interface.RepositoryOwner
avatarUrl fillInOptionals____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { size = Absent }

        optionalArgs____ =
            [ Argument.optional "size" filledInOptionals____.size Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs____ (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


id : SelectionSet Api.ScalarCodecs.Id Api.Interface.RepositoryOwner
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The username used to login.
-}
login : SelectionSet String Api.Interface.RepositoryOwner
login =
    Object.selectionForField "String" "login" [] Decode.string


type alias RepositoriesOptionalArguments =
    { privacy : OptionalArgument Api.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument Api.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe Api.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe Api.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , isFork : OptionalArgument Bool
    }


{-| A list of repositories that the user owns.

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories :
    (RepositoriesOptionalArguments -> RepositoriesOptionalArguments)
    -> SelectionSet decodesTo Api.Object.RepositoryConnection
    -> SelectionSet decodesTo Api.Interface.RepositoryOwner
repositories fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent, isFork = Absent }

        optionalArgs____ =
            [ Argument.optional "privacy" filledInOptionals____.privacy (Encode.enum Api.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals____.orderBy Api.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals____.affiliations (Encode.enum Api.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals____.ownerAffiliations (Encode.enum Api.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals____.isLocked Encode.bool, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int, Argument.optional "isFork" filledInOptionals____.isFork Encode.bool ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs____ object____ Basics.identity


type alias RepositoryOptionalArguments =
    { followRenames : OptionalArgument Bool }


type alias RepositoryRequiredArguments =
    { name : String }


{-| Find Repository.

  - name - Name of Repository to find.
  - followRenames - Follow repository renames. If disabled, a repository referenced by its old name will return an error.

-}
repository :
    (RepositoryOptionalArguments -> RepositoryOptionalArguments)
    -> RepositoryRequiredArguments
    -> SelectionSet decodesTo Api.Object.Repository
    -> SelectionSet (Maybe decodesTo) Api.Interface.RepositoryOwner
repository fillInOptionals____ requiredArgs____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { followRenames = Absent }

        optionalArgs____ =
            [ Argument.optional "followRenames" filledInOptionals____.followRenames Encode.bool ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "repository" (optionalArgs____ ++ [ Argument.required "name" requiredArgs____.name Encode.string ]) object____ (Basics.identity >> Decode.nullable)


{-| The HTTP URL for the owner.
-}
resourcePath : SelectionSet Api.ScalarCodecs.Uri Api.Interface.RepositoryOwner
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for the owner.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Interface.RepositoryOwner
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)
