single = accounts.create :single, name: "Unicorse"

user = users.create :unicorse, email: "unicorse@oaken.com"
membership = memberships.create account: single, user: user



