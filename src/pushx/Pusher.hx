package pushx;

using tink.CoreApi;

interface Pusher<T> {
	function single(id:String, data:T):Surprise<Noise, TypedError<ErrorType>>;
	function multiple(ids:Array<String>, data:T):Future<Array<Outcome<Noise, TypedError<ErrorType>>>>;
	function topic(topic:String, data:T):Surprise<Noise, TypedError<ErrorType>>;
}