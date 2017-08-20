module DefaultPageConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end
    
    def set_page_defaults
        @page_title = "Home • Isaac Johnsen's Homepage"
        @seo_keywords = "Isaac Johnsen"
    end
end
