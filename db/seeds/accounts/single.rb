single = accounts.create :single, name: "Unicorse"

user = users.create :juan, email: "unicorse@example.com"
membership = memberships.create account: single, user: user



