module MimeType =
struct

	class type t = object end

	let _ATOM : t Js.t = Js.Unsafe.js_expr "ContentService.MimeType.ATOM"

end

class type mime_type = object end

class type text_output =
object
	method setMimeType : MimeType.t Js.t -> text_output Js.t Js.meth
end

class type t =
object
	method createTextOutput : Js.js_string Js.t -> text_output Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "ContentService"
