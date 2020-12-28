# Matrix API tools

These scripts are just reminders of how to use the
[admin_api](https://github.com/matrix-org/synapse/blob/master/docs/admin_api/)
requests and some [client](https://matrix.org/docs/spec/client_server/latest)
based requests.

## Requirements
  * [`curl`](https://curl.se)
  * [`jq`](https://stedolan.github.io/jq) to parse JSON data.

## Protect Admin API with additional BasicAuth (optional)
If the /\_synapse endpoint should be protected with additional authentication,
this isn't possible straight forward, as it uses the Authorization header,
which is also used to transmit the Matrix Access Token.

Workaround: Transmit the Access Token with another header, and rewrite it
server side:
  * Change the MATRIX_ADMIN_AUTH_HEADERNAME in config.sh e.g. to "MatrixAdminAuth"
  * Configure your reverse proxy to set this headers value to the Authorization header
  
nginx example config:
```
        location /_synapse {
                [other configs, proxy_pass and so on]
                proxy_set_header Authorization $http_MatrixAdminAuth;
                auth_basic "Access restricted";
                auth_basic_user_file /etc/matrix-synapse/htpasswd_adminapi;

        }
```
