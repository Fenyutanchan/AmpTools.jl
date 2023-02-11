

#####################################################################
"""
    box_message( message::String; color=:light_cyan )::Nothing

Return nothing.
"""
function box_message( message::String; color=:light_cyan )::Nothing
#####################################################################

  line_list = filter( !isempty, split( message, "\n" ) )

  len = (maximum∘map)( length, line_list ) 

  line_list = map( x -> "[ $(x)$(" "^(len-length(x))) ]", line_list )

  bar = "-"^(len+4)

  new_message = join( line_list, "\n" )

  printstyled( """

  $bar
  $(new_message)
  $bar

  """, color=color )

  return nothing

end # function box_message






######################################
#
# Although it does not have relation with SymEngine,
#   this function has been widely used in our projects.
#
function sequential_replace(
    str::String,
    rule_dict::Dict{String,String}
)::String
######################################

  for one_rule in collect( rule_dict )
    str = replace( str, one_rule )
  end # for one_rule

  return str

end # function sequential_replace 






