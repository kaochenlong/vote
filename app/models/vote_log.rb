class VoteLog < ApplicationRecord
  belongs_to :candidate, counter_cache: true
end
