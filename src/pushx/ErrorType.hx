package pushx;

using tink.CoreApi;

enum ErrorType {
	InvalidTarget;
	Others(err:Error);
}