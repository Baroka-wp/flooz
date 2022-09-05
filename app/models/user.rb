class User < ApplicationRecord
  has_many :groups, dependent: :destroy
  has_many :entities, through: :groups

  validates :name, presence: true
end
