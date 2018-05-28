class type cache =
object
	method get : Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
	method getAll : Js.js_string Js.t Js.js_array Js.t -> Js.js_string Js.t Jstable.t Js.meth
	method put : Js.js_string Js.t -> Js.js_string Js.t -> int -> unit Js.meth
	method removeAll : Js.js_string Js.t Js.js_array Js.t -> unit Js.meth
end

class type t =
object
	method getScriptCache : cache Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "CacheService"
