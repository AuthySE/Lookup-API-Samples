clear
echo Lookup Request with TrueSpam by TrueCNAM
echo Request
echo curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/\$1/?AddOns=twilio_caller_name" \
echo -u "\$ACCOUNT_SID:\$ACCOUNT_SECRET"
echo
echo Response
curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/$1/?AddOns=twilio_caller_name" \
-u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN"
echo





