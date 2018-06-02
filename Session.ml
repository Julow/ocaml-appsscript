class type user =
object
	method getEmail : Js.js_string Js.t Js.meth
end

class type t =
object
	method getActiveUser : user Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "Session"
