## What are some common HTTP status codes?

### 200
'A OK'. 200 is the most common HTTP status code because it represents a successful response.  

### 404 Not Found
The most common error code we see is '404 Not Found'.  This status code means the requested resource is no longer available and/or not found.  

### 403 Forbidden
This status code means access to the resources is forbidden.  This may occur if the server only wants to grant access to certain machines.

### 503 Service Unavailable
This status code means the web server is currently unavailable.  This problem is typically temporary and may occur if a server just restarted or is updating.

### 504 Gateway Timeout
When requesting, this error indicates that access to a specific server has timed out.


##### Error codes beginning with 2-- represent a successful request
##### Error codes beginning with 3-- represent a redirection response
##### Error codes beginning with 4-- represent a client-side error
##### Error codes beginning with 5-- represent a server-side error


[Source](https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/)


## What is the difference between a GET request and a POST request? When might each be used?
### GET
A get requests data from a specified resource.
* Back button/Reload is harmless
* GETs can be bookmarked
* GETs can be cached
* GET parameters are saved in your browser history
* GETs only accept ASCII characters
* When sending data, GETs are added to the end of a URL, and therefore have length restrictions
* GET is less secure compared to POST because data sent is part of the URL
* Never use GET when sending passwords or other sensitive information!

### POST
A post submits data to be processed to a specific source.
* Back button/Reload means data will be resubmitted...
* POST requests cannot be bookmarked
* POST requests are not cached
* POST parameters are not saved in your browsers history
* POST requests have no restrictions on length
* POST requests have no restrictions on data types or characters
* POST is a little safer than GET because the parameters are not stored in browser history or in web server logs


[Source](http://www.w3schools.com/tags/ref_httpmethods.asp


## What is a cookie? How does it relate to HTTP requests?
"In the early days of the web, a server had no way to know if two requests came from the same web browser. This was considered as a limitation since it did not allow for instance to keep a user logged-in. This apparent limitation led Netscape to ship a technology called "cookies" in the first version of its Netscape Navigator. It has been quickly adopted by web developers and copied by other web browsers."

"When receiving an HTTP request, a server can send a Set-Cookie header with the response. Afterward, the cookie value is sent along with every request made to the same server in the form of a Cookie HTTP header."

[Source](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)














