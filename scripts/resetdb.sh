#!/bin/bash

# Dropping Users
mongo githubnize      --eval 'db.dropUser("githubnize")'
mongo githubnize-dev  --eval 'db.dropUser("githubnize-dev")'
mongo githubnize-test --eval 'db.dropUser("githubnize-test")'

# Dropping Databases
mongo githubnize      --eval 'db.dropDatabase()'
mongo githubnize-dev  --eval 'db.dropDatabase()'
mongo githubnize-test --eval 'db.dropDatabase()'

# Creating Collections
# mongo githubnize      --eval 'db.createCollection("githubnizeusers");'

# mongo githubnize-dev  --eval 'db.createCollection("githubnizeuser");'

# mongo githubnize-test --eval 'db.createCollection("githubnizeUser");'

# Creating users
# No users should be added for production database by now.
mongo githubnize-dev  --eval 'db.createUser({user:"githubnize-dev",pwd:"123456", roles:[{role:"readWrite",db:"githubnize-dev"}]});'
mongo githubnize-test --eval 'db.createUser({user:"githubnize-test",pwd:"123456", roles:[{role:"readWrite",db:"githubnize-test"}]});'

