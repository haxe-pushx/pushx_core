package pushx;

import pushx.ErrorType;

using tink.CoreApi;

class BasePusher<T> implements Pusher<T> {
	public function single(id:String, data:T):Surprise<Noise, TypedError<ErrorType>>
		throw 'not implemented';
		
	public function multiple(ids:Array<String>, data:T):Future<Array<Outcome<Noise, TypedError<ErrorType>>>>
		return Future.ofMany([for(id in ids) single(id, data)]);
		
	public function topic(topic:String, data:T):Surprise<Noise, TypedError<ErrorType>>
		throw 'not implemented';
		
	function wrapError(type:ErrorType, message = 'Send Failed')
		return Error.typed(message, type);
}