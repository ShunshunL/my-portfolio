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
end
