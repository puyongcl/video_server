package main

//APIBody def
type APIBody struct {
	URL     string `json:"url"`
	Method  string `json:"method"`
	ReqBody string `json:"req_body"`
}

//Err def
type Err struct {
	Error     string `json:"error"`
	ErrorCode string `json:"error_code"`
}

// error def
var (
	ErrorRequestNotRecognized   = Err{Error: "api not recognized, bad request", ErrorCode: "001"}
	ErrorRequestBodyParseFailed = Err{Error: "request body is not correct", ErrorCode: "002"}
	ErrorInternalFaults         = Err{Error: "internal server errror", ErrorCode: "003"}
)
