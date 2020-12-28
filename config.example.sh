#!/bin/sh

# rename this file to "config.sh"

matrixServer="chat.example.com"
matrixServerPort="8448"
accountDomain="example.com"
admin="@user:example.com"
accessToken=""

# Only if you protected your admin api with additional basic
# auth, change the header to pass through here and set
# curlopts accordingly (see README)
MATRIX_ADMIN_AUTH_HEADERNAME="Authorization"
#CURLOPTS_ADMIN="--basic --user admin:secretpasswd"
