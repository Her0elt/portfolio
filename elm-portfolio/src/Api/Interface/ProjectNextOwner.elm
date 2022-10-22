-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.ProjectNextOwner exposing (..)

import Api.Enum.ProjectNextOrderField
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
    { onIssue : SelectionSet decodesTo Api.Object.Issue
    , onOrganization : SelectionSet decodesTo Api.Object.Organization
    , onPullRequest : SelectionSet decodesTo Api.Object.PullRequest
    , onUser : SelectionSet decodesTo Api.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.ProjectNextOwner
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Issue" selections____.onIssue
        , Object.buildFragment "Organization" selections____.onOrganization
        , Object.buildFragment "PullRequest" selections____.onPullRequest
        , Object.buildFragment "User" selections____.onUser
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


id : SelectionSet Api.ScalarCodecs.Id Api.Interface.ProjectNextOwner
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


type alias ProjectNextRequiredArguments =
    { number : Int }


{-| Find a project by project (beta) number.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.

  - number - The project (beta) number.

-}
projectNext :
    ProjectNextRequiredArguments
    -> SelectionSet decodesTo Api.Object.ProjectNext
    -> SelectionSet (Maybe decodesTo) Api.Interface.ProjectNextOwner
projectNext requiredArgs____ object____ =
    Object.selectionForCompositeField "projectNext" [ Argument.required "number" requiredArgs____.number Encode.int ] object____ (Basics.identity >> Decode.nullable)


type alias ProjectsNextOptionalArguments =
    { query : OptionalArgument String
    , sortBy : OptionalArgument Api.Enum.ProjectNextOrderField.ProjectNextOrderField
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of projects (beta) under the owner.
@deprecated The `ProjectNext` API is deprecated in favour of the more capable `ProjectV2` API. Follow the ProjectV2 guide at <https://github.blog/changelog/2022-06-23-the-new-github-issues-june-23rd-update/>, to find a suitable replacement. Removal on 2023-01-01 UTC.

  - query - A project (beta) to search for under the the owner.
  - sortBy - How to order the returned projects (beta).
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
projectsNext :
    (ProjectsNextOptionalArguments -> ProjectsNextOptionalArguments)
    -> SelectionSet decodesTo Api.Object.ProjectNextConnection
    -> SelectionSet decodesTo Api.Interface.ProjectNextOwner
projectsNext fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { query = Absent, sortBy = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "query" filledInOptionals____.query Encode.string, Argument.optional "sortBy" filledInOptionals____.sortBy (Encode.enum Api.Enum.ProjectNextOrderField.toString), Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "projectsNext" optionalArgs____ object____ Basics.identity