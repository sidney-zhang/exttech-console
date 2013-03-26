module TypesHelper
  def nested_types(types)
    types.map do |type, sub_types|
      render(type) + content_tag(:div, nested_types(sub_types), :class => "nested_types")
   end.join.html_safe
 end
end
