class type http_response =
object
	(** Warning: This is not a string but an array of byte *)
	method getContent : Js.js_string Js.t Js.meth

	method getContentText : Js.js_string Js.t Js.meth
	method getResponseCode : int Js.meth
end

class type t =
object
	method fetchAll : < url : Js.js_string Js.t Js.readonly_prop; .. > Js.t Js.js_array Js.t -> http_response Js.t Js.js_array Js.t Js.meth
	method fetch : Js.js_string Js.t -> http_response Js.t Js.meth
	method fetch_param : Js.js_string Js.t -> < .. > Js.t -> http_response Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "UrlFetchApp"
