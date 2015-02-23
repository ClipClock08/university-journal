class Attend < ActiveRecord::Base
  belongs_to :visit
  belongs_to :user
  after_initialize :set_defaults, :if => :new_record?

  enum presence: [:present, :absent, :late]

  validates :mark, numericality: true
  validates :mark_ects, numericality: true

  def set_defaults
    self.presence ||= :present
    self.mark ||= 0
    self.mark_ects ||= 0
  end
end
