module ApplicationHelper
	def get_select_options_for(symbol)    
  		Object.const_get(symbol.to_s.capitalize).find(:all, :order => 'name').collect { |item| [item.name, item.id] }.insert(0, ['Please select...', nil])    
	end  
end
