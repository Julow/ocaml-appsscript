class type namespace =
object
end

class type attribute =
object
	method getValue : Js.js_string Js.t Js.meth
end

class type element =
object
	method getChild : Js.js_string Js.t -> element Js.t Js.opt Js.meth
	method getChild_ns : Js.js_string Js.t -> namespace Js.t -> element Js.t Js.opt Js.meth
	method getChildren : Js.js_string Js.t -> element Js.t Js.js_array Js.t Js.meth
	method getChildren_tag : Js.js_string Js.t -> element Js.t Js.js_array Js.t Js.meth
	method getChildren_ns : Js.js_string Js.t -> namespace Js.t -> element Js.t Js.js_array Js.t Js.meth
	method getName : Js.js_string Js.t Js.meth
	method getText : Js.js_string Js.t Js.meth
	method getChildText : Js.js_string Js.t -> Js.js_string Js.t Js.opt Js.meth
	method getChildText_ns : Js.js_string Js.t -> namespace Js.t -> Js.js_string Js.t Js.opt Js.meth
	method getAttribute : Js.js_string Js.t -> attribute Js.t Js.opt Js.meth
	method getAttribute_ns : Js.js_string Js.t -> namespace Js.t -> attribute Js.t Js.opt Js.meth
	method addContent : element Js.t -> element Js.t Js.meth
	method setText : Js.js_string Js.t -> element Js.t Js.meth
	method setAttribute : Js.js_string Js.t -> Js.js_string Js.t -> element Js.t Js.meth
end

class type document =
object
	method getRootElement : element Js.t Js.opt Js.meth
end

class type format =
object
	method format : document Js.t -> Js.js_string Js.t Js.meth
	method format_element : element Js.t -> Js.js_string Js.t Js.meth
end

class type t =
object
	method createDocument : element Js.t -> document Js.t Js.meth
	method createElement : Js.js_string Js.t -> element Js.t Js.meth
	method createElement_ns : Js.js_string Js.t -> namespace Js.t -> element Js.t Js.meth
	method getNamespace : Js.js_string Js.t -> namespace Js.t Js.meth
	method parse : Js.js_string Js.t -> document Js.t Js.meth
	method getPrettyFormat : format Js.t Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "XmlService"
