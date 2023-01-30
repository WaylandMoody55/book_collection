class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :price, presence: true
    validates :published_date, presence: true

    attr_accessor :published_date_temp 

    before_save :format_date

    def format_date
        self.published_date = published_date.try(:strftime, '%Y-%m-%d')
    end

end
