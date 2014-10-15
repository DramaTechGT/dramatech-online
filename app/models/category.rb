# @author Dean Papastrat
# This class represents a CMS category on the DramaTech application, which could
# help organize blog posts, static pages, or any other html-based items.
class Category < ActiveRecord::Base

  # @!method obfuscate_id
  # Changes the id of an object to a large random integer, in order to prevent
  # easy identification of when a post was made, or what number it is.
  # @return [id]
  obfuscate_id

  # A category has many posts.
  has_many :posts

  # Makes sure a category has a name.
  validates :name, presence: true

end
