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
4. curl --version: get version and supported protocol list and feature list. curl 7.54.0 (x86_64-apple-darwin18.0) sample output: libcurl/7.54.0 LibreSSL/2.6.5 zlib/1.2.11 nghttp2/1.24.1
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp 
Features: AsynchDNS IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz HTTP2 UnixSockets HTTPS-proxy 


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
2. curl -H "User-Agent:" http://example.com/, switch off user agent by giving it empty value.

## Command Parameters
1. curl -L: force redirect
2. curl -u : authentifiction with username and password. curl -X POST -u "user1:password1" quiet-waters-1228.herokuapp.com/login
3. curl -o: save reponse to an output with custom file name curl -o out.json http://www.example.com/index.html
4. curl -O: save file and the file is downloaded from the server to the current working directory using the same name as the file on the server.
5. -D: The -D flag will tell cURL to dump headers and cookies into a specified file in the current directory. curl -X POST -D headers -u "user1:password1" quiet-waters-1228.herokuapp.com/login same as --dump-header
6. -b:  pass the headers file back to the server with our request. curl -b headers quiet-waters-1228.herokuapp.com/whoami
7. with item 5 -D and item 6 -b, we handle a page that is behind a login, yet doesn’t respond to HTTP auth.
8. -c: When using the –dump-header flag we not only capture the cookies from a response, but also all of the headers from that response. This may or may not be what you want. -c only stores the cookie jar. curl -X POST -c cookies.txt -u "user1:password1" quiet-waters-1228.herokuapp.com/login. To use the stored cookie,  curl -b cookies.txt quiet-waters-1228.herokuapp.com/whoami


