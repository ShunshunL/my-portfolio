module DefaultPageContent 
  extend ActiveSupport::Concern 

  included do 
    before_action :set_title 
  end

  def set_title 
    @page_title = "Shunshun's Portfolio Website"
    @seo_keywords = "Shunshun Lyu Portfolio"
  end
end