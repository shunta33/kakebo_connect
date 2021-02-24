class Income < ApplicationRecord
  belongs_to :income_category, optional: true
  belongs_to :user

end
