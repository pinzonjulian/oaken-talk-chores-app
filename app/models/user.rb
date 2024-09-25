class User < ApplicationRecord
  has_many :memberships

  def to_s = email
end
