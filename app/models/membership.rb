class Membership < ApplicationRecord
  belongs_to :account
  belongs_to :user

  def to_s = user.to_s
end
