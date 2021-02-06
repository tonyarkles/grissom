# grissom
A Common Lisp Gemini Server

# TODO List

- [ ] Basic project setup

From the specification

1.1 Gemini Transactions

- [ ] Listen on a port for incoming HTTPS requests
- [ ] Handle server certificates
- [ ] Parse request
- [ ] Send response header
- [ ] Send response body
- [ ] Close connection

2. Gemini Requests

- <URL><CR><LF>
- URL is absolute, including scheme and host, max length 1024 bytes
- Single line

3. Gemini Responses

3.1 Response Headers

```
<STATUS><SPACE><META><CR><LF>
```

3.2 Status Codes

- [ ] 20 (SUCCESS)
- [ ] 51 (NOT FOUND)

3.3 Response Bodies

- Only for 2x status codes
- [ ] "text/gemini; charset=utf-8"
- [ ] Loading gemini files from disk and returning appropriate status
      code



