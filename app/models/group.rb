class Group < ApplicationRecord
  has_many :entities
  belongs_to :user

  def address
    "#{name} #{description}"
  end
end

