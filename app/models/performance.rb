class Performance < ActiveRecord::Base
  obfuscate_id
  belongs_to :category
  has_many :reservations
end
