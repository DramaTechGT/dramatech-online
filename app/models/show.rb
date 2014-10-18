class Show < ActiveRecord::Base
  obfuscate_id
  has_many :performances
end