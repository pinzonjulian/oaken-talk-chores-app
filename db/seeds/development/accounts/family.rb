common_chores = [
  "Vacuuming",
  "Dusting",
  "Sweeping",
  "Mopping",
  "Washing dishes",
  "Cleaning bathrooms",
  "Laundry",
  "Taking out the trash",
  "Cleaning windows",
  "Making beds"
]

accounts.heelers.chores.insert_all \
  common_chores.map { |name| { name:  } }
