package pushx;

using tink.CoreApi;

interface Pusher<Data> {
	function single(id:String, payload:Payload<Data>):Promise<Result>;
	function multiple(ids:Array<String>, payload:Payload<Data>):Promise<Result>;
	function topic(topic:String, payload:Payload<Data>):Promise<Result>;
}