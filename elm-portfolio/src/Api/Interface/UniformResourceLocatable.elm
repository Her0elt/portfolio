-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.UniformResourceLocatable exposing (..)

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
    { onBot : SelectionSet decodesTo Api.Object.Bot
    , onCheckRun : SelectionSet decodesTo Api.Object.CheckRun
    , onClosedEvent : SelectionSet decodesTo Api.Object.ClosedEvent
    , onCommit : SelectionSet decodesTo Api.Object.Commit
    , onConvertToDraftEvent : SelectionSet decodesTo Api.Object.ConvertToDraftEvent
    , onCrossReferencedEvent : SelectionSet decodesTo Api.Object.CrossReferencedEvent
    , onGist : SelectionSet decodesTo Api.Object.Gist
    , onIssue : SelectionSet decodesTo Api.Object.Issue
    , onMannequin : SelectionSet decodesTo Api.Object.Mannequin
    , onMergedEvent : SelectionSet decodesTo Api.Object.MergedEvent
    , onMilestone : SelectionSet decodesTo Api.Object.Milestone
    , onOrganization : SelectionSet decodesTo Api.Object.Organization
    , onPullRequest : SelectionSet decodesTo Api.Object.PullRequest
    , onPullRequestCommit : SelectionSet decodesTo Api.Object.PullRequestCommit
    , onReadyForReviewEvent : SelectionSet decodesTo Api.Object.ReadyForReviewEvent
    , onRelease : SelectionSet decodesTo Api.Object.Release
    , onRepository : SelectionSet decodesTo Api.Object.Repository
    , onRepositoryTopic : SelectionSet decodesTo Api.Object.RepositoryTopic
    , onReviewDismissedEvent : SelectionSet decodesTo Api.Object.ReviewDismissedEvent
    , onTeamDiscussion : SelectionSet decodesTo Api.Object.TeamDiscussion
    , onTeamDiscussionComment : SelectionSet decodesTo Api.Object.TeamDiscussionComment
    , onUser : SelectionSet decodesTo Api.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.UniformResourceLocatable
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Bot" selections____.onBot
        , Object.buildFragment "CheckRun" selections____.onCheckRun
        , Object.buildFragment "ClosedEvent" selections____.onClosedEvent
        , Object.buildFragment "Commit" selections____.onCommit
        , Object.buildFragment "ConvertToDraftEvent" selections____.onConvertToDraftEvent
        , Object.buildFragment "CrossReferencedEvent" selections____.onCrossReferencedEvent
        , Object.buildFragment "Gist" selections____.onGist
        , Object.buildFragment "Issue" selections____.onIssue
        , Object.buildFragment "Mannequin" selections____.onMannequin
        , Object.buildFragment "MergedEvent" selections____.onMergedEvent
        , Object.buildFragment "Milestone" selections____.onMilestone
        , Object.buildFragment "Organization" selections____.onOrganization
        , Object.buildFragment "PullRequest" selections____.onPullRequest
        , Object.buildFragment "PullRequestCommit" selections____.onPullRequestCommit
        , Object.buildFragment "ReadyForReviewEvent" selections____.onReadyForReviewEvent
        , Object.buildFragment "Release" selections____.onRelease
        , Object.buildFragment "Repository" selections____.onRepository
        , Object.buildFragment "RepositoryTopic" selections____.onRepositoryTopic
        , Object.buildFragment "ReviewDismissedEvent" selections____.onReviewDismissedEvent
        , Object.buildFragment "TeamDiscussion" selections____.onTeamDiscussion
        , Object.buildFragment "TeamDiscussionComment" selections____.onTeamDiscussionComment
        , Object.buildFragment "User" selections____.onUser
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onBot = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCheckRun = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onClosedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onConvertToDraftEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCrossReferencedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onGist = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMannequin = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMergedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMilestone = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReadyForReviewEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRelease = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepositoryTopic = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewDismissedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamDiscussion = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeamDiscussionComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The HTML path to this resource.
-}
resourcePath : SelectionSet Api.ScalarCodecs.Uri Api.Interface.UniformResourceLocatable
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The URL to this resource.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Interface.UniformResourceLocatable
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)