class Recruiter < ApplicationRecord
  has_many :candidates, dependent: :delete_all

  def as_json options = {}
    super().merge(candidates: candidates.ids)
  end
  
end
