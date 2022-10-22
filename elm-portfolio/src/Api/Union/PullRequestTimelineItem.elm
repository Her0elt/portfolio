-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Union.PullRequestTimelineItem exposing (..)

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
    { onAssignedEvent : SelectionSet decodesTo Api.Object.AssignedEvent
    , onBaseRefDeletedEvent : SelectionSet decodesTo Api.Object.BaseRefDeletedEvent
    , onBaseRefForcePushedEvent : SelectionSet decodesTo Api.Object.BaseRefForcePushedEvent
    , onClosedEvent : SelectionSet decodesTo Api.Object.ClosedEvent
    , onCommit : SelectionSet decodesTo Api.Object.Commit
    , onCommitCommentThread : SelectionSet decodesTo Api.Object.CommitCommentThread
    , onCrossReferencedEvent : SelectionSet decodesTo Api.Object.CrossReferencedEvent
    , onDemilestonedEvent : SelectionSet decodesTo Api.Object.DemilestonedEvent
    , onDeployedEvent : SelectionSet decodesTo Api.Object.DeployedEvent
    , onDeploymentEnvironmentChangedEvent : SelectionSet decodesTo Api.Object.DeploymentEnvironmentChangedEvent
    , onHeadRefDeletedEvent : SelectionSet decodesTo Api.Object.HeadRefDeletedEvent
    , onHeadRefForcePushedEvent : SelectionSet decodesTo Api.Object.HeadRefForcePushedEvent
    , onHeadRefRestoredEvent : SelectionSet decodesTo Api.Object.HeadRefRestoredEvent
    , onIssueComment : SelectionSet decodesTo Api.Object.IssueComment
    , onLabeledEvent : SelectionSet decodesTo Api.Object.LabeledEvent
    , onLockedEvent : SelectionSet decodesTo Api.Object.LockedEvent
    , onMergedEvent : SelectionSet decodesTo Api.Object.MergedEvent
    , onMilestonedEvent : SelectionSet decodesTo Api.Object.MilestonedEvent
    , onPullRequestReview : SelectionSet decodesTo Api.Object.PullRequestReview
    , onPullRequestReviewComment : SelectionSet decodesTo Api.Object.PullRequestReviewComment
    , onPullRequestReviewThread : SelectionSet decodesTo Api.Object.PullRequestReviewThread
    , onReferencedEvent : SelectionSet decodesTo Api.Object.ReferencedEvent
    , onRenamedTitleEvent : SelectionSet decodesTo Api.Object.RenamedTitleEvent
    , onReopenedEvent : SelectionSet decodesTo Api.Object.ReopenedEvent
    , onReviewDismissedEvent : SelectionSet decodesTo Api.Object.ReviewDismissedEvent
    , onReviewRequestRemovedEvent : SelectionSet decodesTo Api.Object.ReviewRequestRemovedEvent
    , onReviewRequestedEvent : SelectionSet decodesTo Api.Object.ReviewRequestedEvent
    , onSubscribedEvent : SelectionSet decodesTo Api.Object.SubscribedEvent
    , onUnassignedEvent : SelectionSet decodesTo Api.Object.UnassignedEvent
    , onUnlabeledEvent : SelectionSet decodesTo Api.Object.UnlabeledEvent
    , onUnlockedEvent : SelectionSet decodesTo Api.Object.UnlockedEvent
    , onUnsubscribedEvent : SelectionSet decodesTo Api.Object.UnsubscribedEvent
    , onUserBlockedEvent : SelectionSet decodesTo Api.Object.UserBlockedEvent
    }


{-| Build up a selection for this Union by passing in a Fragments record.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Union.PullRequestTimelineItem
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "AssignedEvent" selections____.onAssignedEvent
        , Object.buildFragment "BaseRefDeletedEvent" selections____.onBaseRefDeletedEvent
        , Object.buildFragment "BaseRefForcePushedEvent" selections____.onBaseRefForcePushedEvent
        , Object.buildFragment "ClosedEvent" selections____.onClosedEvent
        , Object.buildFragment "Commit" selections____.onCommit
        , Object.buildFragment "CommitCommentThread" selections____.onCommitCommentThread
        , Object.buildFragment "CrossReferencedEvent" selections____.onCrossReferencedEvent
        , Object.buildFragment "DemilestonedEvent" selections____.onDemilestonedEvent
        , Object.buildFragment "DeployedEvent" selections____.onDeployedEvent
        , Object.buildFragment "DeploymentEnvironmentChangedEvent" selections____.onDeploymentEnvironmentChangedEvent
        , Object.buildFragment "HeadRefDeletedEvent" selections____.onHeadRefDeletedEvent
        , Object.buildFragment "HeadRefForcePushedEvent" selections____.onHeadRefForcePushedEvent
        , Object.buildFragment "HeadRefRestoredEvent" selections____.onHeadRefRestoredEvent
        , Object.buildFragment "IssueComment" selections____.onIssueComment
        , Object.buildFragment "LabeledEvent" selections____.onLabeledEvent
        , Object.buildFragment "LockedEvent" selections____.onLockedEvent
        , Object.buildFragment "MergedEvent" selections____.onMergedEvent
        , Object.buildFragment "MilestonedEvent" selections____.onMilestonedEvent
        , Object.buildFragment "PullRequestReview" selections____.onPullRequestReview
        , Object.buildFragment "PullRequestReviewComment" selections____.onPullRequestReviewComment
        , Object.buildFragment "PullRequestReviewThread" selections____.onPullRequestReviewThread
        , Object.buildFragment "ReferencedEvent" selections____.onReferencedEvent
        , Object.buildFragment "RenamedTitleEvent" selections____.onRenamedTitleEvent
        , Object.buildFragment "ReopenedEvent" selections____.onReopenedEvent
        , Object.buildFragment "ReviewDismissedEvent" selections____.onReviewDismissedEvent
        , Object.buildFragment "ReviewRequestRemovedEvent" selections____.onReviewRequestRemovedEvent
        , Object.buildFragment "ReviewRequestedEvent" selections____.onReviewRequestedEvent
        , Object.buildFragment "SubscribedEvent" selections____.onSubscribedEvent
        , Object.buildFragment "UnassignedEvent" selections____.onUnassignedEvent
        , Object.buildFragment "UnlabeledEvent" selections____.onUnlabeledEvent
        , Object.buildFragment "UnlockedEvent" selections____.onUnlockedEvent
        , Object.buildFragment "UnsubscribedEvent" selections____.onUnsubscribedEvent
        , Object.buildFragment "UserBlockedEvent" selections____.onUserBlockedEvent
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onAssignedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onBaseRefDeletedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onBaseRefForcePushedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onClosedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommitCommentThread = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCrossReferencedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDemilestonedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDeployedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDeploymentEnvironmentChangedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefDeletedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefForcePushedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onHeadRefRestoredEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onLabeledEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onLockedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMergedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onMilestonedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewThread = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReferencedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRenamedTitleEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReopenedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewDismissedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewRequestRemovedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onReviewRequestedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onSubscribedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnassignedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnlabeledEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnlockedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUnsubscribedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onUserBlockedEvent = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }