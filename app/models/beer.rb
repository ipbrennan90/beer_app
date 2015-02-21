class Beer < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, :ibu, :abv, presence: true
end
