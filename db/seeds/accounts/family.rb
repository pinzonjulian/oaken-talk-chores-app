heelers = accounts.create :heelers, name: "The Heelers"

bandit = users.create :bandit, email: "bandit@example.com"
chilli = users.create :chilli, email: "chilli@example.com"
bluey = users.create :bluey, email: "bluey@example.com"
bingo = users.create :bingo, email: "bingo@example.com"


memberships.create account: heelers, user: bandit
memberships.create account: heelers, user: chilli
memberships.create account: heelers, user: bluey
memberships.create account: heelers, user: bingo