module ApplicationHelper
	def nav_link_to(name, options = {}, html_options = {})
	  helper_html = ""
	  if current_page?(options)
		helper_html << '<li class="active">'
	  else
	  	helper_html << '<li>'
	  end

	  helper_html << "#{link_to(name, options, html_options)}</li>"
	  render(:inline => helper_html)
	end
end
