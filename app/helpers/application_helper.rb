module ApplicationHelper
  #Returns the full title on a per-page basis.
  def full_title(page_title = '')
	base_title = "Welcome to Paradox Parkway"
	if page_title.empty?
	  base_title
	else
	  "#{page_title} | #{base_title}"
	end
  end

  def current_user
    User.find(session[:current_user_id])
  end
  
end
