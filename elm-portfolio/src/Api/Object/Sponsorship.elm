-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Sponsorship exposing (..)

import Api.Enum.SponsorshipPrivacy
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


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Sponsorship
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Sponsorship
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether this sponsorship represents a one-time payment versus a recurring sponsorship.
-}
isOneTimePayment : SelectionSet Bool Api.Object.Sponsorship
isOneTimePayment =
    Object.selectionForField "Bool" "isOneTimePayment" [] Decode.bool


{-| Check if the sponsor has chosen to receive sponsorship update emails sent from the sponsorable. Only returns a non-null value when the viewer has permission to know this.
-}
isSponsorOptedIntoEmail : SelectionSet (Maybe Bool) Api.Object.Sponsorship
isSponsorOptedIntoEmail =
    Object.selectionForField "(Maybe Bool)" "isSponsorOptedIntoEmail" [] (Decode.bool |> Decode.nullable)


{-| The entity that is being sponsored
@deprecated `Sponsorship.maintainer` will be removed. Use `Sponsorship.sponsorable` instead. Removal on 2020-04-01 UTC.
-}
maintainer :
    SelectionSet decodesTo Api.Object.User
    -> SelectionSet decodesTo Api.Object.Sponsorship
maintainer object____ =
    Object.selectionForCompositeField "maintainer" [] object____ Basics.identity


{-| The privacy level for this sponsorship.
-}
privacyLevel : SelectionSet Api.Enum.SponsorshipPrivacy.SponsorshipPrivacy Api.Object.Sponsorship
privacyLevel =
    Object.selectionForField "Enum.SponsorshipPrivacy.SponsorshipPrivacy" "privacyLevel" [] Api.Enum.SponsorshipPrivacy.decoder


{-| The user that is sponsoring. Returns null if the sponsorship is private or if sponsor is not a user.
@deprecated `Sponsorship.sponsor` will be removed. Use `Sponsorship.sponsorEntity` instead. Removal on 2020-10-01 UTC.
-}
sponsor :
    SelectionSet decodesTo Api.Object.User
    -> SelectionSet (Maybe decodesTo) Api.Object.Sponsorship
sponsor object____ =
    Object.selectionForCompositeField "sponsor" [] object____ (Basics.identity >> Decode.nullable)


{-| The user or organization that is sponsoring, if you have permission to view them.
-}
sponsorEntity :
    SelectionSet decodesTo Api.Union.Sponsor
    -> SelectionSet (Maybe decodesTo) Api.Object.Sponsorship
sponsorEntity object____ =
    Object.selectionForCompositeField "sponsorEntity" [] object____ (Basics.identity >> Decode.nullable)


{-| The entity that is being sponsored
-}
sponsorable :
    SelectionSet decodesTo Api.Interface.Sponsorable
    -> SelectionSet decodesTo Api.Object.Sponsorship
sponsorable object____ =
    Object.selectionForCompositeField "sponsorable" [] object____ Basics.identity


{-| The associated sponsorship tier
-}
tier :
    SelectionSet decodesTo Api.Object.SponsorsTier
    -> SelectionSet (Maybe decodesTo) Api.Object.Sponsorship
tier object____ =
    Object.selectionForCompositeField "tier" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the current tier was chosen for this sponsorship.
-}
tierSelectedAt : SelectionSet (Maybe Api.ScalarCodecs.DateTime) Api.Object.Sponsorship
tierSelectedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "tierSelectedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)