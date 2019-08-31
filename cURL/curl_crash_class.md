## Overview
1. curl supports a lot of protocols, not just http and https.
2. curl has more than 200 command line options.

## Basic Usages
### Daily Basics (also for debugging)
1. curl -i url: Include the HTTP-header in the output. The HTTP-header includes things like server-name, date of the document, HTTP-version and more...
2. curl -v url: if -i option not enough. Useful for debugging and seeing what's going on "under the hood". A line starting with '>' means "header
              data" sent by curl, '<' means "header data" received by curl that is hidden in normal cases, and a line starting with '*' means additional info pro-
              vided by curl.
3. curl --trace url: if curl -v still not enough.

### HTTP Request Methods
1. curl url is by default http get
2. -X POST/DELETE/UPDATE... 
3. for other protocols, -X has other value choices.

### Query Strings
1. send query strings in url : curl -X POST "quiet-waters-1228.herokuapp.com/echo?fname=Mark&lname=Bates"
2. pass in -d : son format or only query string part: curl -X POST -d "fname=Mark&lname=Bates" quiet-waters-1228.herokuapp.com/echo
3. if query string needs to be encoded: curl --data-urlencode "querykey1=unencoded_vale1" --data-urlencode "querykey2=unencoded_vale2" ...
4. -d is mainly used for HTTP POST, use curl -G -d if this is for http get. -G means "get"
5. read from file: curl -d @file_name : curl -X POST -d @form_data.json quiet-waters-1228.herokuapp.com/echo
6. send in form data: curl -F. Using this flag we can send parameters that will be interpreted by the remote server as if they had been posted from an HTML form.curl -X POST -F user[fname]=Mark -F user[lname]=Bates -F foo=bar \
  quiet-waters-1228.herokuapp.com/echo -H "Accept: application/json"
### Setting Headers
1. -H "Accept: application/json" : response type is json. also for -H "Content-Type: application/json"


## Command Parameters
1. curl -L: force redirect
2. curl -u : authentifiction with username and password. curl -X POST -u "user1:password1" quiet-waters-1228.herokuapp.com/login
3. curl -o: save reponse to an output curl -o out.json http://www.example.com/index.html
