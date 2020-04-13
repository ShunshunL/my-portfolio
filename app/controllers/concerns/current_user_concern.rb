module CurrentUserConcern
  extend ActiveSupport::Concern

  # super is User class, while right side is OpenStruct class
  def current_user 
    super ||  guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end
end 