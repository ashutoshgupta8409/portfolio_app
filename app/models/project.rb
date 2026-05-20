class Project < ApplicationRecord
  validates :title, presence: true

  def tech_list
    tech.to_s.split(',').map(&:strip)
  end
end
