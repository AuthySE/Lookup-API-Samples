clear
echo Basic Lookup Request
echo Request
echo curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/\$1/"
echo -u "\$TWILIO_ACCOUNT_SID:\$TWILIO_ACCOUNT_SECRET"
echo
echo Response
curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/$1/" \
-u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN"
echo





