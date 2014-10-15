# @author Dean Papastrat
# This class represents a registered user in the DramaTech application.
# A registered user would be part of the club, not just a typical
# user who happens to visite the site.
class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Makes sure a user has a first name, last name, and role.
  validates :first_name, :last_name, :role, presence: true

  before_validation do
    if self.role.empty?
      self.role = 'new_user'
    end
  end

  # Calculates if the user has access to everything on the app.
  # @param [Object]
  # @return [Boolean]
  def has_access?
    if role == 'super_admin'
      true
    end
  end

  def is_approved?
    case role
    when 'super_admin'
      true
    when 'admin'
      true
    when 'editor'
      true
    else
      false
    end
  end

  # Concactenates a user's name from their first and last name.
  # @param [Object]
  # @return [String]
  def name
    "#{first_name} #{last_name}"
  end
end