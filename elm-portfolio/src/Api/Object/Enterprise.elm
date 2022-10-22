-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Enterprise exposing (..)

import Api.Enum.EnterpriseUserAccountMembershipRole
import Api.Enum.EnterpriseUserDeployment
import Api.Enum.RoleInOrganization
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


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the enterprise's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl :
    (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
    -> SelectionSet Api.ScalarCodecs.Uri Api.Object.Enterprise
avatarUrl fillInOptionals____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { size = Absent }

        optionalArgs____ =
            [ Argument.optional "size" filledInOptionals____.size Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs____ (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Enterprise billing information visible to enterprise billing managers.
-}
billingInfo :
    SelectionSet decodesTo Api.Object.EnterpriseBillingInfo
    -> SelectionSet (Maybe decodesTo) Api.Object.Enterprise
billingInfo object____ =
    Object.selectionForCompositeField "billingInfo" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Enterprise
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.Object.Enterprise
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The description of the enterprise.
-}
description : SelectionSet (Maybe String) Api.Object.Enterprise
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The description of the enterprise as HTML.
-}
descriptionHTML : SelectionSet Api.ScalarCodecs.Html Api.Object.Enterprise
descriptionHTML =
    Object.selectionForField "ScalarCodecs.Html" "descriptionHTML" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Enterprise
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The location of the enterprise.
-}
location : SelectionSet (Maybe String) Api.Object.Enterprise
location =
    Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


type alias MembersOptionalArguments =
    { organizationLogins : OptionalArgument (List String)
    , query : OptionalArgument String
    , orderBy : OptionalArgument Api.InputObject.EnterpriseMemberOrder
    , role : OptionalArgument Api.Enum.EnterpriseUserAccountMembershipRole.EnterpriseUserAccountMembershipRole
    , deployment : OptionalArgument Api.Enum.EnterpriseUserDeployment.EnterpriseUserDeployment
    , hasTwoFactorEnabled : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this enterprise.

  - organizationLogins - Only return members within the organizations with these logins
  - query - The search string to look for.
  - orderBy - Ordering options for members returned from the connection.
  - role - The role of the user in the enterprise organization or server.
  - deployment - Only return members within the selected GitHub Enterprise deployment
  - hasTwoFactorEnabled - Only return members with this two-factor authentication status. Does not include members who only have an account on a GitHub Enterprise Server instance.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
members :
    (MembersOptionalArguments -> MembersOptionalArguments)
    -> SelectionSet decodesTo Api.Object.EnterpriseMemberConnection
    -> SelectionSet decodesTo Api.Object.Enterprise
members fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { organizationLogins = Absent, query = Absent, orderBy = Absent, role = Absent, deployment = Absent, hasTwoFactorEnabled = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "organizationLogins" filledInOptionals____.organizationLogins (Encode.string |> Encode.list), Argument.optional "query" filledInOptionals____.query Encode.string, Argument.optional "orderBy" filledInOptionals____.orderBy Api.InputObject.encodeEnterpriseMemberOrder, Argument.optional "role" filledInOptionals____.role (Encode.enum Api.Enum.EnterpriseUserAccountMembershipRole.toString), Argument.optional "deployment" filledInOptionals____.deployment (Encode.enum Api.Enum.EnterpriseUserDeployment.toString), Argument.optional "hasTwoFactorEnabled" filledInOptionals____.hasTwoFactorEnabled Encode.bool, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "members" optionalArgs____ object____ Basics.identity


{-| The name of the enterprise.
-}
name : SelectionSet String Api.Object.Enterprise
name =
    Object.selectionForField "String" "name" [] Decode.string


type alias OrganizationsOptionalArguments =
    { query : OptionalArgument String
    , viewerOrganizationRole : OptionalArgument Api.Enum.RoleInOrganization.RoleInOrganization
    , orderBy : OptionalArgument Api.InputObject.OrganizationOrder
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of organizations that belong to this enterprise.

  - query - The search string to look for.
  - viewerOrganizationRole - The viewer's role in an organization.
  - orderBy - Ordering options for organizations returned from the connection.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
organizations :
    (OrganizationsOptionalArguments -> OrganizationsOptionalArguments)
    -> SelectionSet decodesTo Api.Object.OrganizationConnection
    -> SelectionSet decodesTo Api.Object.Enterprise
organizations fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { query = Absent, viewerOrganizationRole = Absent, orderBy = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs____ =
            [ Argument.optional "query" filledInOptionals____.query Encode.string, Argument.optional "viewerOrganizationRole" filledInOptionals____.viewerOrganizationRole (Encode.enum Api.Enum.RoleInOrganization.toString), Argument.optional "orderBy" filledInOptionals____.orderBy Api.InputObject.encodeOrganizationOrder, Argument.optional "after" filledInOptionals____.after Encode.string, Argument.optional "before" filledInOptionals____.before Encode.string, Argument.optional "first" filledInOptionals____.first Encode.int, Argument.optional "last" filledInOptionals____.last Encode.int ]
                |> List.filterMap Basics.identity
    in
    Object.selectionForCompositeField "organizations" optionalArgs____ object____ Basics.identity


{-| Enterprise information only visible to enterprise owners.
-}
ownerInfo :
    SelectionSet decodesTo Api.Object.EnterpriseOwnerInfo
    -> SelectionSet (Maybe decodesTo) Api.Object.Enterprise
ownerInfo object____ =
    Object.selectionForCompositeField "ownerInfo" [] object____ (Basics.identity >> Decode.nullable)


{-| The HTTP path for this enterprise.
-}
resourcePath : SelectionSet Api.ScalarCodecs.Uri Api.Object.Enterprise
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The URL-friendly identifier for the enterprise.
-}
slug : SelectionSet String Api.Object.Enterprise
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| The HTTP URL for this enterprise.
-}
url : SelectionSet Api.ScalarCodecs.Uri Api.Object.Enterprise
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Is the current viewer an admin of this enterprise?
-}
viewerIsAdmin : SelectionSet Bool Api.Object.Enterprise
viewerIsAdmin =
    Object.selectionForField "Bool" "viewerIsAdmin" [] Decode.bool


{-| The URL of the enterprise website.
-}
websiteUrl : SelectionSet (Maybe Api.ScalarCodecs.Uri) Api.Object.Enterprise
websiteUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "websiteUrl" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
