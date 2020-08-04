class Event < ApplicationRecord
    before_validation :set_default_price

    validates :title, presence: true, uniquness: true
    validates :description, presence: true, length: {minimum: 100}
    validates :location, presence: true
    validates :price, presence: true
    validates :image, presence: true
    private
    def set_default_price
        self.price ||=0
    end
end
