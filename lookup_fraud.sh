clear
echo Basic Lookup Request
echo Request
echo curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/\$1/?Type=fraud"
echo -u "\$TWILIO_ACCOUNT_SID:\$TWILIO_ACCOUNT_SECRET"
echo
echo Response
curl -X GET "https://lookups.twilio.com/v1/PhoneNumbers/$1/?Type=fraud" \
-u "$TWILIO_ACCOUNT_SID:$TWILIO_AUTH_TOKEN"
echo





