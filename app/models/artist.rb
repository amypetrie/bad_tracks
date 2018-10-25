class Artist < ApplicationRecord
  validates_presence_of  :name #plural here, singular in model
  has_many :songs

end
