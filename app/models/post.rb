# @author Dean Papastrat
# This class represents a CMS item on the DramaTech application, which
# could be a blog post, a static page, or any other html-based item.
class Post < ActiveRecord::Base

  # @!method obfuscate_id
  # Changes the id of an object to a large random integer, in order to prevent
  # easy identification of when a post was made, or what number it is.
  # @return [id]
  obfuscate_id

  # Posts belong to a category.
  belongs_to :category

  # Makes sure a post has a title and publish date.
  validates :title, :publish_date, presence: true

  # If there is no publish date chosen, automatically set it to 2 weeks away.
  before_validation do
    self.publish_date ||= Time.now + 2.weeks    
  end

  # Calculates the current time in relation to the publishing time to determine
  # whether or not the post should be considered published.
  # @param [Object]
  # @return [Boolean]
  def published?
    Time.now > self.publish_date ? true : false
  end
end