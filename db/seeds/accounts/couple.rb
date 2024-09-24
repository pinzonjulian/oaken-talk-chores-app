couple = accounts.create :rad_and_frisky, name: "Rad and Frisky"

rad = users.create :rad, email: "rad@example.com"
frisky = users.create :frisky, email: "frisky@example.com"

memberships.create account: couple, user: rad
memberships.create account: couple, user: frisky
