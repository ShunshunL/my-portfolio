module ApplicationHelper
  def login_helper(style='')
    if current_user.is_a?(GuestUser) 
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe  +
      (link_to "Login", new_user_session_path, class: style)
    else 
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end 
  end
  
  # seems like content_tag is better fit for view helper -- cleaner
  def source_helper(layout_name)
     content_tag(:p, "Thanks for visiting me and you're on the #{layout_name} layout.", class: "source-greeting")
  end

  def copyright_generator 
    ShunshunViewTool::Renderer.copyright('Shunshun Lyu', 'All rights reserved')
  end
end
