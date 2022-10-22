-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PackageFile exposing (..)

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


id : SelectionSet Api.ScalarCodecs.Id Api.Object.PackageFile
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| MD5 hash of the file.
-}
md5 : SelectionSet (Maybe String) Api.Object.PackageFile
md5 =
    Object.selectionForField "(Maybe String)" "md5" [] (Decode.string |> Decode.nullable)


{-| Name of the file.
-}
name : SelectionSet String Api.Object.PackageFile
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The package version this file belongs to.
-}
packageVersion :
    SelectionSet decodesTo Api.Object.PackageVersion
    -> SelectionSet (Maybe decodesTo) Api.Object.PackageFile
packageVersion object____ =
    Object.selectionForCompositeField "packageVersion" [] object____ (Basics.identity >> Decode.nullable)


{-| SHA1 hash of the file.
-}
sha1 : SelectionSet (Maybe String) Api.Object.PackageFile
sha1 =
    Object.selectionForField "(Maybe String)" "sha1" [] (Decode.string |> Decode.nullable)


{-| SHA256 hash of the file.
-}
sha256 : SelectionSet (Maybe String) Api.Object.PackageFile
sha256 =
    Object.selectionForField "(Maybe String)" "sha256" [] (Decode.string |> Decode.nullable)


{-| Size of the file in bytes.
-}
size : SelectionSet (Maybe Int) Api.Object.PackageFile
size =
    Object.selectionForField "(Maybe Int)" "size" [] (Decode.int |> Decode.nullable)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.PackageFile
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| URL to download the asset.
-}
url : SelectionSet (Maybe Api.ScalarCodecs.Uri) Api.Object.PackageFile
url =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)