# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company
puts "companies: #{Company.all.count}"
puts "contacts: #{Contact.all.count}"

apple=Company.find_by({"name"=>"Apple"})

tim=Contact.new
tim["first_name"]="Tim"
tim["last_name"]="Cook"
tim["email"]="tim@apple.com"
tim["company id"]=apple["id"]
tim.save

craig=Contact.new
craig["first_name"]="Craig"
craig["last_name"]="Federeghi"
craig["email"]="craig@apple.com"
craig["company id"]=apple["id"]
craig.save

amazon=Company.find_by({"name"=>"Amazon"})

jeff=Contact.new
jeff["first_name"]="Jeff"
jeff["last_name"]="Bezos"
jeff["email"]="jeff@amazon.com"
jeff["company id"]=amazon["id"]
jeff.save


# 2. How many contacts work at Apple?

apple_contacts=Contact.where({"company id"=>apple["id"]})
puts "apple contacts:#{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?
