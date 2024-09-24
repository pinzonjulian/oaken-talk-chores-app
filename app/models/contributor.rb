class Contributor < ApplicationRecord
  belongs_to :account
  belongs_to :chore
  belongs_to :member, class_name: "Membership", foreign_key: "membership_id", primary_key: "id"
end
