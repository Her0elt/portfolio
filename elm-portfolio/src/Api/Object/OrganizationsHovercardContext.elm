-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.OrganizationsHovercardContext exposing (..)

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


{-| A string describing this context
-}
message : SelectionSet String Api.Object.OrganizationsHovercardContext
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| An octicon to accompany this context
-}
octicon : SelectionSet String Api.Object.OrganizationsHovercardContext
octicon =
    Object.selectionForField "String" "octicon" [] Decode.string


type alias RelevantOrganizationsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Organizations this user is a member of that are relevant

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
relevantOrganizations :
    (RelevantOrganizationsOptionalArguments -> RelevantOrganizationsOptionalArguments)
    -> SelectionSet decodesTo Api.Object.OrganizationConnection
    -> SelectionSet decodesTo Api.Object.OrganizationsHovercardContext
relevantOrganizations fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "relevantOrganizations" optionalArgs____ object____ Basics.identity


{-| The total number of organizations this user is in
-}
totalOrganizationCount : SelectionSet Int Api.Object.OrganizationsHovercardContext
totalOrganizationCount =
    Object.selectionForField "Int" "totalOrganizationCount" [] Decode.int