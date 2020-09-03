class Project < ApplicationRecord
  belongs_to :user
  belongs_to :contractor
  accepts_nested_attributes_for :contractor
end
