class Post < ActiveRecord::Base
  obfuscate_id
  belongs_to :category
end