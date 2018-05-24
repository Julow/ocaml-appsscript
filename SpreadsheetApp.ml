class type range =
object
	method getValues : < toString : Js.js_string Js.t Js.meth > Js.t Js.js_array Js.t Js.js_array Js.t Js.meth
end

class type sheet =
object
	method getLastRow : int Js.meth
	method getRange : int -> int -> int -> int -> range Js.t Js.meth
	method appendRow : Js.js_string Js.t Js.js_array Js.t -> unit Js.meth
end

class type spreadsheet =
object
	method getSheets : sheet Js.t Js.js_array Js.t Js.meth
	method getId : Js.js_string Js.t Js.meth
end

class type t =
object
	method openById : Js.js_string Js.t -> spreadsheet Js.t Js.meth
	method create : Js.js_string Js.t -> int -> int -> spreadsheet Js.t Js.meth
	method flush : unit Js.meth
end

let t : t Js.t = Js.Unsafe.js_expr "SpreadsheetApp"
