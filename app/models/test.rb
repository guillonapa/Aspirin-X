class Test < ApplicationRecord
  belongs_to :assignment
  has_many :codes
end
