-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.CommitCommentThread exposing (..)

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


type alias CommentsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| The comments that exist in this thread.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments :
    (CommentsOptionalArguments -> CommentsOptionalArguments)
    -> SelectionSet decodesTo Api.Object.CommitCommentConnection
    -> SelectionSet decodesTo Api.Object.CommitCommentThread
comments fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "comments" optionalArgs____ object____ Basics.identity


{-| The commit the comments were made on.
-}
commit :
    SelectionSet decodesTo Api.Object.Commit
    -> SelectionSet (Maybe decodesTo) Api.Object.CommitCommentThread
commit object____ =
    Object.selectionForCompositeField "commit" [] object____ (Basics.identity >> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.CommitCommentThread
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The file the comments were made on.
-}
path : SelectionSet (Maybe String) Api.Object.CommitCommentThread
path =
    Object.selectionForField "(Maybe String)" "path" [] (Decode.string |> Decode.nullable)


{-| The position in the diff for the commit that the comment was made on.
-}
position : SelectionSet (Maybe Int) Api.Object.CommitCommentThread
position =
    Object.selectionForField "(Maybe Int)" "position" [] (Decode.int |> Decode.nullable)


{-| The repository associated with this node.
-}
repository :
    SelectionSet decodesTo Api.Object.Repository
    -> SelectionSet decodesTo Api.Object.CommitCommentThread
repository object____ =
    Object.selectionForCompositeField "repository" [] object____ Basics.identity