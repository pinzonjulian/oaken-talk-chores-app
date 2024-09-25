heelers = accounts.create :heelers, name: "The Heelers"

bandit = users.create :bandit, email: "bandit@oaken.com"
chilli = users.create :chilli, email: "chilli@oaken.com"
bluey = users.create :bluey, email: "bluey@oaken.com"
bingo = users.create :bingo, email: "bingo@oaken.com"

memberships.create account: heelers, user: bandit
memberships.create account: heelers, user: chilli
memberships.create account: heelers, user: bluey
memberships.create account: heelers, user: bingo
