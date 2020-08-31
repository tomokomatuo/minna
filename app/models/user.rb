class User < ApplicationRecord
  validates :age, presence: true
  has_many :blogs
end
