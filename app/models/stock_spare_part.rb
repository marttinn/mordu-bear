class StockSparePart < ActiveRecord::Base
  belongs_to :workshop_car
  belongs_to :spare_part
end
