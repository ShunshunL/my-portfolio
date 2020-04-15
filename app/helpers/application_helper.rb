module ApplicationHelper
  def login_helper(style='nav-link')
    # Check if current_user is of class User
    if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe  +
      (link_to "Login", new_user_session_path, class: style)
    else 
      # () is here for return reason, to make sure both of these links get returned
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end 
  end
  
  # seems like content_tag is better fit for view helper -- cleaner
  def source_helper(layout_name)
    if session[:source] 
     content_tag(:p, "Thanks for visiting me from #{session[:source]} and you're on the #{layout_name} layout.", class: "source-greeting")
    end 
  end

  def copyright_generator 
    ShunshunViewTool::Renderer.copyright('Shunshun Lyu', 'All rights reserved')
  end
end
