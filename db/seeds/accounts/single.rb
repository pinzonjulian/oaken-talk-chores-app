single = accounts.create :single, name: "Unicorse"

user = users.create :unicorse, email: "unicorse@example.com"
membership = memberships.create account: single, user: user



