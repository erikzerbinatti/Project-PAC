class Project < ActiveRecord::Base
  validates :name, presence: true
  has_one :responsible
end
