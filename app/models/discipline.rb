class Discipline < ActiveRecord::Base
  belongs_to :user
  has_many :relationships, dependent: :destroy
  has_many :discipline_modules, dependent: :destroy

  default_scope { order 'title' }

  validates :title, presence: true
end
