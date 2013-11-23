class User < ActiveRecord::Base
   attr_accessible :email, :username, :password
   validates_uniqueness_of :username, :email
   validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

   has_many :questions
   has_many :answers

   has_secure_password
end
