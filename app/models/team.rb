class Team < ApplicationRecord
  has_many :teams, class_name: 'Team'
  has_many :users, class_name: 'User'
  belongs_to :manager, class_name: 'User', optional: true
  belongs_to :parent_team, class_name: 'Team', optional: true

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :active, presence: true
  validates :is_parent, presence: true

  validates_associated :manager
  validates :parent_team, presence: true


end
