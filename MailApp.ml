class type t =
object
	method sendEmail : <
		to_ : Js.js_string Js.t Js.readonly_prop;
		subject : Js.js_string Js.t Js.readonly_prop;
		htmlBody : Js.js_string Js.t Js.readonly_prop; .. > Js.t -> unit Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "MailApp"
