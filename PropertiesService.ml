class type properties =
object
	method getProperty : Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
	method setProperty : Js.js_string Js.t -> Js.js_string Js.t -> unit Js.meth
end

class type t =
object
	method getUserProperties : properties Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "PropertiesService"
