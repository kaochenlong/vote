class Candidate < ApplicationRecord

  validates :name, presence: true
  has_many :vote_logs, dependent: :destroy
end
