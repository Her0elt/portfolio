-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.GistFile exposing (..)

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


{-| The file name encoded to remove characters that are invalid in URL paths.
-}
encodedName : SelectionSet (Maybe String) Api.Object.GistFile
encodedName =
    Object.selectionForField "(Maybe String)" "encodedName" [] (Decode.string |> Decode.nullable)


{-| The gist file encoding.
-}
encoding : SelectionSet (Maybe String) Api.Object.GistFile
encoding =
    Object.selectionForField "(Maybe String)" "encoding" [] (Decode.string |> Decode.nullable)


{-| The file extension from the file name.
-}
extension : SelectionSet (Maybe String) Api.Object.GistFile
extension =
    Object.selectionForField "(Maybe String)" "extension" [] (Decode.string |> Decode.nullable)


{-| Indicates if this file is an image.
-}
isImage : SelectionSet Bool Api.Object.GistFile
isImage =
    Object.selectionForField "Bool" "isImage" [] Decode.bool


{-| Whether the file's contents were truncated.
-}
isTruncated : SelectionSet Bool Api.Object.GistFile
isTruncated =
    Object.selectionForField "Bool" "isTruncated" [] Decode.bool


{-| The programming language this file is written in.
-}
language :
    SelectionSet decodesTo Api.Object.Language
    -> SelectionSet (Maybe decodesTo) Api.Object.GistFile
language object____ =
    Object.selectionForCompositeField "language" [] object____ (Basics.identity >> Decode.nullable)


{-| The gist file name.
-}
name : SelectionSet (Maybe String) Api.Object.GistFile
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The gist file size in bytes.
-}
size : SelectionSet (Maybe Int) Api.Object.GistFile
size =
    Object.selectionForField "(Maybe Int)" "size" [] (Decode.int |> Decode.nullable)


type alias TextOptionalArguments =
    { truncate : OptionalArgument Int }


{-| UTF8 text data or null if the file is binary

  - truncate - Optionally truncate the returned file to this length.

-}
text :
    (TextOptionalArguments -> TextOptionalArguments)
    -> SelectionSet (Maybe String) Api.Object.GistFile
text fillInOptionals____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { truncate = Absent }

        optionalArgs____ =
            [ Argument.optional "truncate" filledInOptionals____.truncate Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForField "(Maybe String)" "text" optionalArgs____ (Decode.string |> Decode.nullable)
