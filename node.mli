include Catalog.ENTRY with type sort_criterion = [ `Date | `Title ]

val make : name:string -> file:string -> entry
val date : entry -> float
val markup : entry -> Simple_markup.paragraph list
val syndicated : entry -> bool
val title : entry -> string
val get_html :
  (Simple_markup.paragraph list ->
   Simple_markup__html.html_output XHTML.M.elt list) ->
  entry -> Simple_markup__html.html_output XHTML.M.elt list

val is_inner_link : string -> bool
