module ApplicationHelper
  def login_helper 
    # Check if current_user is of class User
    if current_user.is_a?(User) 
      link_to "Logout", destroy_user_session_path, method: :delete 
    else 
      # () is here for return reason, to make sure both of these links get returned
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe  +
      (link_to "Login", new_user_session_path)
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
