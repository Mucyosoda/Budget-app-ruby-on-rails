class Group < ApplicationRecord
  has_many :entities
  belongs_to :user
end
