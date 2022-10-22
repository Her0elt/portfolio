-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PackageVersion exposing (..)

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


type alias FilesOptionalArguments =
    { orderBy : OptionalArgument Api.InputObject.PackageFileOrder
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| List of files associated with this package version

  - orderBy - Ordering of the returned package files.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
files :
    (FilesOptionalArguments -> FilesOptionalArguments)
    -> SelectionSet decodesTo Api.Object.PackageFileConnection
    -> SelectionSet decodesTo Api.Object.PackageVersion
files fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { orderBy = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "orderBy" filledInOptionals____.orderBy Api.InputObject.encodePackageFileOrder, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "files" optionalArgs____ object____ Basics.identity


id : SelectionSet Api.ScalarCodecs.Id Api.Object.PackageVersion
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The package associated with this version.
-}
package :
    SelectionSet decodesTo Api.Object.Package
    -> SelectionSet (Maybe decodesTo) Api.Object.PackageVersion
package object____ =
    Object.selectionForCompositeField "package" [] object____ (Basics.identity >> Decode.nullable)


{-| The platform this version was built for.
-}
platform : SelectionSet (Maybe String) Api.Object.PackageVersion
platform =
    Object.selectionForField "(Maybe String)" "platform" [] (Decode.string |> Decode.nullable)


{-| Whether or not this version is a pre-release.
-}
preRelease : SelectionSet Bool Api.Object.PackageVersion
preRelease =
    Object.selectionForField "Bool" "preRelease" [] Decode.bool


{-| The README of this package version.
-}
readme : SelectionSet (Maybe String) Api.Object.PackageVersion
readme =
    Object.selectionForField "(Maybe String)" "readme" [] (Decode.string |> Decode.nullable)


{-| The release associated with this package version.
-}
release :
    SelectionSet decodesTo Api.Object.Release
    -> SelectionSet (Maybe decodesTo) Api.Object.PackageVersion
release object____ =
    Object.selectionForCompositeField "release" [] object____ (Basics.identity >> Decode.nullable)


{-| Statistics about package activity.
-}
statistics :
    SelectionSet decodesTo Api.Object.PackageVersionStatistics
    -> SelectionSet (Maybe decodesTo) Api.Object.PackageVersion
statistics object____ =
    Object.selectionForCompositeField "statistics" [] object____ (Basics.identity >> Decode.nullable)


{-| The package version summary.
-}
summary : SelectionSet (Maybe String) Api.Object.PackageVersion
summary =
    Object.selectionForField "(Maybe String)" "summary" [] (Decode.string |> Decode.nullable)


{-| The version string.
-}
version : SelectionSet String Api.Object.PackageVersion
version =
    Object.selectionForField "String" "version" [] Decode.string
