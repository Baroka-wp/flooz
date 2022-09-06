class Group < ApplicationRecord
  mount_uploader :icon, IconUploader

  before_save :default_icon

  belongs_to :user
  has_many :entities, dependent: :destroy

  validates :name, presence: true

  def self.icons
    {
      communication: 'communication.png',
      education: 'education.png',
      entertaiment: 'entertaiment.png',
      food: 'food.png',
      healthcare: 'healthcare.png',
      housing: 'housing.png',
      internet: 'internet.png',
      investment: 'investment.png'
    }
  end

  private

  def default_icon
    self.icon = 'https://www.flaticon.com/svg/static/icons/svg/3523/3523063.svg' if icon.nil?
  end
end
