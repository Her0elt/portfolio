-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.Votable exposing (..)

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
    { onDiscussion : SelectionSet decodesTo Api.Object.Discussion
    , onDiscussionComment : SelectionSet decodesTo Api.Object.DiscussionComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.Votable
fragments selections____ =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Discussion" selections____.onDiscussion
        , Object.buildFragment "DiscussionComment" selections____.onDiscussionComment
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onDiscussion = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onDiscussionComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Number of upvotes that this subject has received.
-}
upvoteCount : SelectionSet Int Api.Interface.Votable
upvoteCount =
    Object.selectionForField "Int" "upvoteCount" [] Decode.int


{-| Whether or not the current user can add or remove an upvote on this subject.
-}
viewerCanUpvote : SelectionSet Bool Api.Interface.Votable
viewerCanUpvote =
    Object.selectionForField "Bool" "viewerCanUpvote" [] Decode.bool


{-| Whether or not the current user has already upvoted this subject.
-}
viewerHasUpvoted : SelectionSet Bool Api.Interface.Votable
viewerHasUpvoted =
    Object.selectionForField "Bool" "viewerHasUpvoted" [] Decode.bool