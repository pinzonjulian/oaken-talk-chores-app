class Chore < ApplicationRecord
  belongs_to :account
  has_many :contributors
end
