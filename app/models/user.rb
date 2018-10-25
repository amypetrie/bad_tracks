class User < ApplicationRecord
  validates_presence_of :password, require: true
  validates :username, presence: true, uniqueness: true

  has_secure_password

  enum role: %w(default admin)
  # %w says - this is an array of of words(strings) separated by whitespace, can be in any order.
  # 0 is default, 1 is admin
  # default is generic user role - have to be logged in - dont have a role for visitor
  # this defines roles we have once logged in
end
