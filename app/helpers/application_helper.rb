module ApplicationHelper
	def link_to_remove_fields(name,f)
		f.hidden_field(:_destroy) + link_to_function(name , "remove_fields(this)")
	

	def link_to_add_fields(name ,f , association)
		new_object = f.object.class.
	end
end
