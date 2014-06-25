class SparePart < ActiveRecord::Base
  validates :brand,       presence: true
  validates :car,         presence: true
  validates :generation,  presence: true
  validates :region,      presence: true
  validates :year,        presence: true
  validates :name,        presence: true
  validates :kind,        presence: true
end
