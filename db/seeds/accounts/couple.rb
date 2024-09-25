couple = accounts.create :rad_and_frisky, name: "Rad and Frisky"

rad = users.create :rad, email: "rad@oaken.com"
frisky = users.create :frisky, email: "frisky@oaken.com"

memberships.create account: couple, user: rad
memberships.create account: couple, user: frisky
