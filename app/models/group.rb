class Group < ApplicationRecord
  before_save :defaultIcon

  belongs_to :user
  has_many :entities, dependent: :destroy

  validates :name, presence: true

  private

  def default_icon
    self.icon = 'https://www.flaticon.com/svg/static/icons/svg/3523/3523063.svg' if icon.nil?
  end
end
