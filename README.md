#Lookup cURL API Samples

You'll need
1. Twilio SID
2. Auth Token

Add them to the .env file and 
`source .env`

[Lookup Documentation](https://www.twilio.com/docs/lookup)

### First Class Twilio Calls
1. Basic
1. Carrier
1. Fraud

### 3rd Party AddOns
For any AddOns you want to use, you'll need to browse to [https://www.twilio.com/console/lookup/add-ons](https://www.twilio.com/console/lookup/add-ons) and:
1. Create a unique name
1. enable the AddOn for Lookup.  

You'll use the unique name in the cURL call.

![AddOn Setup](https://raw.githubusercontent.com/AuthySE/Lookup-API-Samples/master/enable_add_on.png)


### Example cURLs

**Lookup Basic** (free)

Essentially a RESTful a wrapper around libphonenumber

_lookup_basic.sh_
```
curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/$1/" \
-u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN"
```

```
./lookup_basic.sh 15551234567
```

**Multiple AddOns**

Append each unique addon's name as an additional param

_lookup_multiple.sh_
```
curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/$1/?AddOns=whitepages_pro_phone_intel&AddOns=whitepages_pro_caller_id" \
-u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN"
```

```
./lookup_multiple.sh 15551234567
```