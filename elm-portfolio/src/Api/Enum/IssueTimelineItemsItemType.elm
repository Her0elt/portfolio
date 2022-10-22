-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.IssueTimelineItemsItemType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible item types found in a timeline.

  - IssueComment - Represents a comment on an Issue.
  - CrossReferencedEvent - Represents a mention made by one issue or pull request to another.
  - AddedToProjectEvent - Represents a 'added\_to\_project' event on a given issue or pull request.
  - AssignedEvent - Represents an 'assigned' event on any assignable object.
  - ClosedEvent - Represents a 'closed' event on any `Closable`.
  - CommentDeletedEvent - Represents a 'comment\_deleted' event on a given issue or pull request.
  - ConnectedEvent - Represents a 'connected' event on a given issue or pull request.
  - ConvertedNoteToIssueEvent - Represents a 'converted\_note\_to\_issue' event on a given issue or pull request.
  - ConvertedToDiscussionEvent - Represents a 'converted\_to\_discussion' event on a given issue.
  - DemilestonedEvent - Represents a 'demilestoned' event on a given issue or pull request.
  - DisconnectedEvent - Represents a 'disconnected' event on a given issue or pull request.
  - LabeledEvent - Represents a 'labeled' event on a given issue or pull request.
  - LockedEvent - Represents a 'locked' event on a given issue or pull request.
  - MarkedAsDuplicateEvent - Represents a 'marked\_as\_duplicate' event on a given issue or pull request.
  - MentionedEvent - Represents a 'mentioned' event on a given issue or pull request.
  - MilestonedEvent - Represents a 'milestoned' event on a given issue or pull request.
  - MovedColumnsInProjectEvent - Represents a 'moved\_columns\_in\_project' event on a given issue or pull request.
  - PinnedEvent - Represents a 'pinned' event on a given issue or pull request.
  - ReferencedEvent - Represents a 'referenced' event on a given `ReferencedSubject`.
  - RemovedFromProjectEvent - Represents a 'removed\_from\_project' event on a given issue or pull request.
  - RenamedTitleEvent - Represents a 'renamed' event on a given issue or pull request
  - ReopenedEvent - Represents a 'reopened' event on any `Closable`.
  - SubscribedEvent - Represents a 'subscribed' event on a given `Subscribable`.
  - TransferredEvent - Represents a 'transferred' event on a given issue or pull request.
  - UnassignedEvent - Represents an 'unassigned' event on any assignable object.
  - UnlabeledEvent - Represents an 'unlabeled' event on a given issue or pull request.
  - UnlockedEvent - Represents an 'unlocked' event on a given issue or pull request.
  - UserBlockedEvent - Represents a 'user\_blocked' event on a given user.
  - UnmarkedAsDuplicateEvent - Represents an 'unmarked\_as\_duplicate' event on a given issue or pull request.
  - UnpinnedEvent - Represents an 'unpinned' event on a given issue or pull request.
  - UnsubscribedEvent - Represents an 'unsubscribed' event on a given `Subscribable`.

-}
type IssueTimelineItemsItemType
    = IssueComment
    | CrossReferencedEvent
    | AddedToProjectEvent
    | AssignedEvent
    | ClosedEvent
    | CommentDeletedEvent
    | ConnectedEvent
    | ConvertedNoteToIssueEvent
    | ConvertedToDiscussionEvent
    | DemilestonedEvent
    | DisconnectedEvent
    | LabeledEvent
    | LockedEvent
    | MarkedAsDuplicateEvent
    | MentionedEvent
    | MilestonedEvent
    | MovedColumnsInProjectEvent
    | PinnedEvent
    | ReferencedEvent
    | RemovedFromProjectEvent
    | RenamedTitleEvent
    | ReopenedEvent
    | SubscribedEvent
    | TransferredEvent
    | UnassignedEvent
    | UnlabeledEvent
    | UnlockedEvent
    | UserBlockedEvent
    | UnmarkedAsDuplicateEvent
    | UnpinnedEvent
    | UnsubscribedEvent


list : List IssueTimelineItemsItemType
list =
    [ IssueComment, CrossReferencedEvent, AddedToProjectEvent, AssignedEvent, ClosedEvent, CommentDeletedEvent, ConnectedEvent, ConvertedNoteToIssueEvent, ConvertedToDiscussionEvent, DemilestonedEvent, DisconnectedEvent, LabeledEvent, LockedEvent, MarkedAsDuplicateEvent, MentionedEvent, MilestonedEvent, MovedColumnsInProjectEvent, PinnedEvent, ReferencedEvent, RemovedFromProjectEvent, RenamedTitleEvent, ReopenedEvent, SubscribedEvent, TransferredEvent, UnassignedEvent, UnlabeledEvent, UnlockedEvent, UserBlockedEvent, UnmarkedAsDuplicateEvent, UnpinnedEvent, UnsubscribedEvent ]


decoder : Decoder IssueTimelineItemsItemType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ISSUE_COMMENT" ->
                        Decode.succeed IssueComment

                    "CROSS_REFERENCED_EVENT" ->
                        Decode.succeed CrossReferencedEvent

                    "ADDED_TO_PROJECT_EVENT" ->
                        Decode.succeed AddedToProjectEvent

                    "ASSIGNED_EVENT" ->
                        Decode.succeed AssignedEvent

                    "CLOSED_EVENT" ->
                        Decode.succeed ClosedEvent

                    "COMMENT_DELETED_EVENT" ->
                        Decode.succeed CommentDeletedEvent

                    "CONNECTED_EVENT" ->
                        Decode.succeed ConnectedEvent

                    "CONVERTED_NOTE_TO_ISSUE_EVENT" ->
                        Decode.succeed ConvertedNoteToIssueEvent

                    "CONVERTED_TO_DISCUSSION_EVENT" ->
                        Decode.succeed ConvertedToDiscussionEvent

                    "DEMILESTONED_EVENT" ->
                        Decode.succeed DemilestonedEvent

                    "DISCONNECTED_EVENT" ->
                        Decode.succeed DisconnectedEvent

                    "LABELED_EVENT" ->
                        Decode.succeed LabeledEvent

                    "LOCKED_EVENT" ->
                        Decode.succeed LockedEvent

                    "MARKED_AS_DUPLICATE_EVENT" ->
                        Decode.succeed MarkedAsDuplicateEvent

                    "MENTIONED_EVENT" ->
                        Decode.succeed MentionedEvent

                    "MILESTONED_EVENT" ->
                        Decode.succeed MilestonedEvent

                    "MOVED_COLUMNS_IN_PROJECT_EVENT" ->
                        Decode.succeed MovedColumnsInProjectEvent

                    "PINNED_EVENT" ->
                        Decode.succeed PinnedEvent

                    "REFERENCED_EVENT" ->
                        Decode.succeed ReferencedEvent

                    "REMOVED_FROM_PROJECT_EVENT" ->
                        Decode.succeed RemovedFromProjectEvent

                    "RENAMED_TITLE_EVENT" ->
                        Decode.succeed RenamedTitleEvent

                    "REOPENED_EVENT" ->
                        Decode.succeed ReopenedEvent

                    "SUBSCRIBED_EVENT" ->
                        Decode.succeed SubscribedEvent

                    "TRANSFERRED_EVENT" ->
                        Decode.succeed TransferredEvent

                    "UNASSIGNED_EVENT" ->
                        Decode.succeed UnassignedEvent

                    "UNLABELED_EVENT" ->
                        Decode.succeed UnlabeledEvent

                    "UNLOCKED_EVENT" ->
                        Decode.succeed UnlockedEvent

                    "USER_BLOCKED_EVENT" ->
                        Decode.succeed UserBlockedEvent

                    "UNMARKED_AS_DUPLICATE_EVENT" ->
                        Decode.succeed UnmarkedAsDuplicateEvent

                    "UNPINNED_EVENT" ->
                        Decode.succeed UnpinnedEvent

                    "UNSUBSCRIBED_EVENT" ->
                        Decode.succeed UnsubscribedEvent

                    _ ->
                        Decode.fail ("Invalid IssueTimelineItemsItemType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : IssueTimelineItemsItemType -> String
toString enum____ =
    case enum____ of
        IssueComment ->
            "ISSUE_COMMENT"

        CrossReferencedEvent ->
            "CROSS_REFERENCED_EVENT"

        AddedToProjectEvent ->
            "ADDED_TO_PROJECT_EVENT"

        AssignedEvent ->
            "ASSIGNED_EVENT"

        ClosedEvent ->
            "CLOSED_EVENT"

        CommentDeletedEvent ->
            "COMMENT_DELETED_EVENT"

        ConnectedEvent ->
            "CONNECTED_EVENT"

        ConvertedNoteToIssueEvent ->
            "CONVERTED_NOTE_TO_ISSUE_EVENT"

        ConvertedToDiscussionEvent ->
            "CONVERTED_TO_DISCUSSION_EVENT"

        DemilestonedEvent ->
            "DEMILESTONED_EVENT"

        DisconnectedEvent ->
            "DISCONNECTED_EVENT"

        LabeledEvent ->
            "LABELED_EVENT"

        LockedEvent ->
            "LOCKED_EVENT"

        MarkedAsDuplicateEvent ->
            "MARKED_AS_DUPLICATE_EVENT"

        MentionedEvent ->
            "MENTIONED_EVENT"

        MilestonedEvent ->
            "MILESTONED_EVENT"

        MovedColumnsInProjectEvent ->
            "MOVED_COLUMNS_IN_PROJECT_EVENT"

        PinnedEvent ->
            "PINNED_EVENT"

        ReferencedEvent ->
            "REFERENCED_EVENT"

        RemovedFromProjectEvent ->
            "REMOVED_FROM_PROJECT_EVENT"

        RenamedTitleEvent ->
            "RENAMED_TITLE_EVENT"

        ReopenedEvent ->
            "REOPENED_EVENT"

        SubscribedEvent ->
            "SUBSCRIBED_EVENT"

        TransferredEvent ->
            "TRANSFERRED_EVENT"

        UnassignedEvent ->
            "UNASSIGNED_EVENT"

        UnlabeledEvent ->
            "UNLABELED_EVENT"

        UnlockedEvent ->
            "UNLOCKED_EVENT"

        UserBlockedEvent ->
            "USER_BLOCKED_EVENT"

        UnmarkedAsDuplicateEvent ->
            "UNMARKED_AS_DUPLICATE_EVENT"

        UnpinnedEvent ->
            "UNPINNED_EVENT"

        UnsubscribedEvent ->
            "UNSUBSCRIBED_EVENT"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe IssueTimelineItemsItemType
fromString enumString____ =
    case enumString____ of
        "ISSUE_COMMENT" ->
            Just IssueComment

        "CROSS_REFERENCED_EVENT" ->
            Just CrossReferencedEvent

        "ADDED_TO_PROJECT_EVENT" ->
            Just AddedToProjectEvent

        "ASSIGNED_EVENT" ->
            Just AssignedEvent

        "CLOSED_EVENT" ->
            Just ClosedEvent

        "COMMENT_DELETED_EVENT" ->
            Just CommentDeletedEvent

        "CONNECTED_EVENT" ->
            Just ConnectedEvent

        "CONVERTED_NOTE_TO_ISSUE_EVENT" ->
            Just ConvertedNoteToIssueEvent

        "CONVERTED_TO_DISCUSSION_EVENT" ->
            Just ConvertedToDiscussionEvent

        "DEMILESTONED_EVENT" ->
            Just DemilestonedEvent

        "DISCONNECTED_EVENT" ->
            Just DisconnectedEvent

        "LABELED_EVENT" ->
            Just LabeledEvent

        "LOCKED_EVENT" ->
            Just LockedEvent

        "MARKED_AS_DUPLICATE_EVENT" ->
            Just MarkedAsDuplicateEvent

        "MENTIONED_EVENT" ->
            Just MentionedEvent

        "MILESTONED_EVENT" ->
            Just MilestonedEvent

        "MOVED_COLUMNS_IN_PROJECT_EVENT" ->
            Just MovedColumnsInProjectEvent

        "PINNED_EVENT" ->
            Just PinnedEvent

        "REFERENCED_EVENT" ->
            Just ReferencedEvent

        "REMOVED_FROM_PROJECT_EVENT" ->
            Just RemovedFromProjectEvent

        "RENAMED_TITLE_EVENT" ->
            Just RenamedTitleEvent

        "REOPENED_EVENT" ->
            Just ReopenedEvent

        "SUBSCRIBED_EVENT" ->
            Just SubscribedEvent

        "TRANSFERRED_EVENT" ->
            Just TransferredEvent

        "UNASSIGNED_EVENT" ->
            Just UnassignedEvent

        "UNLABELED_EVENT" ->
            Just UnlabeledEvent

        "UNLOCKED_EVENT" ->
            Just UnlockedEvent

        "USER_BLOCKED_EVENT" ->
            Just UserBlockedEvent

        "UNMARKED_AS_DUPLICATE_EVENT" ->
            Just UnmarkedAsDuplicateEvent

        "UNPINNED_EVENT" ->
            Just UnpinnedEvent

        "UNSUBSCRIBED_EVENT" ->
            Just UnsubscribedEvent

        _ ->
            Nothing
