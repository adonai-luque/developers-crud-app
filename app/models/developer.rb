class Developer < ApplicationRecord
  POSITIONS = [
    "Front-End Developer",
    "Back-End Developer"
  ].freeze

  validates :position, inclusion: { in: POSITIONS }
end
