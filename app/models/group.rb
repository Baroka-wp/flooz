class Group < ApplicationRecord
  mount_uploader :icon, IconUploader

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
      investment: 'investment.png',
      default: 'default.png'
    }
  end
end
