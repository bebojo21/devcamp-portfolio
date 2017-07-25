class Portfolio < ApplicationRecord
    has_many :technologies
    
    accepts_nested_attributes_for :technologies,
                                    allow_destroy: true,
                                    reject_if: lambda { |attrs| attrs['name'].blank? }
    
    validates_presence_of :title, :body
    
    mount_uploader :thumb_image, PortfolioUploader    
    mount_uploader :main_image, PortfolioUploader
    
    def self.what
        where(body: 'What fjkdsal fhdslhs hahaha g elit, sed do eiusmod tempor.')
    end
    
    def self.by_position
        order("position ASC") 
    end
    
    scope :ruby_on_rails_portfolio_items, -> { where(body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.") }
end
