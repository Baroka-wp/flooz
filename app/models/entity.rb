class Entity < ApplicationRecord
  # order by created_at DESC
  default_scope { order(created_at: :desc) }
  after_initialize :init

  belongs_to :user
  belongs_to :group

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }

  def init
    self.amount ||= 1
  end
end
