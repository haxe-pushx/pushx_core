package pushx;

using tink.CoreApi;

typedef Result = {
	errors: Array<{id:String, type:ErrorType}>
}

enum ErrorType {
	InvalidTarget;
	Others(err:Error);
}