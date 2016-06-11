class Rating < ApplicationRecord
  belongs_to :local
  belongs_to :traveller
end
