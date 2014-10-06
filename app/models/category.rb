class Category < ActiveRecord::Base
  obfuscate_id
  has_many :posts
end
