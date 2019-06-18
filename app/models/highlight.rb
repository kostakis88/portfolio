class Highlight < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.reactjs
        where(subtitle: 'React JS')
    end

    scope :ruby_on_rails_highlight_items, -> { where(subtitle: 'Ruby on Rails') }
end
