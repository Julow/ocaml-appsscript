class type http_response =
object
	method getContentText : Js.js_string Js.t Js.meth
	method getResponseCode : int Js.meth
end

class type t =
object
	method fetchAll : < .. > Js.t Js.js_array Js.t -> http_response Js.t Js.js_array Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "UrlFetchApp"
