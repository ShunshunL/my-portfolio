# keeping for now, set a banner for welcoming the user from social media sites

module SetSource 
  extend ActiveSupport::Concern 

  included do 
    before_action :set_source 
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end