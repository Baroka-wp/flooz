class Entity < ApplicationRecord
  after_initialize :init

  belongs_to :user
  belongs_to :group

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }

  def init
    self.amount ||= 1
  end
end