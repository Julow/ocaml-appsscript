class type t =
object
	method info : Js.js_string Js.t -> unit Js.meth
	method error : Js.js_string Js.t -> unit Js.meth
	method time : Js.js_string Js.t -> unit Js.meth
	method timeEnd : Js.js_string Js.t -> unit Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "console"

let info str = t##info (Js.string str)
let error str = t##info (Js.string str)
