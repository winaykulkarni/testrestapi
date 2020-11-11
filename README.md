# testrestapi
 Assessment test

# Test the API
You can test the API by including header `Content-Type`,`Client-Service` & `Auth-Key` with value `application/json`,`frontend-client` & `restapi123` in every request

And for API except `login` you must include `id` & `token` that you get after successfully login. The header for both look like this `User-ID` & `Authorization`

List of the API :

`[POST]` `/auth/login` json `{ "username" : "admin", "password" : "Admin123$"}`