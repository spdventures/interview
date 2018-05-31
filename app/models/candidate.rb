class Candidate < ApplicationRecord
  has_many :references, dependent: :delete_all
  belongs_to :recruiter

  def as_json options = {}
    super().merge(references: references.ids)
  end
end
