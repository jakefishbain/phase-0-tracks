
#Release 1

# Create new list

# array = %w(bananas apples oranges)
# array.map! do |item|
#   item.upcase
# end

# p array



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 
  # split items into array
  # ask the user how many of each item they want
  #push the item and associated number into a key/value hash 
  # count number of items in the array
  # set default quantity of 1 in the hash
  # print the list console using the print method

# output: [what data type goes here, array or hash?]

def create_list(string_list)
  list_arr = string_list.split(' ')
    amount_hash = {} 
    list_arr.each do |item|
      amount_hash[item] = 1
    end
  return amount_hash
end

#puts create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps: puts asking for a new items and amount, default 1
        # combine the two hashes
# output: updated hash list

def add_item(initial_hash, new_string, new_value=1)
  initial_hash[new_string] = new_value
  initial_hash
end



# Method to remove an item from the list
# input:
# steps:
# output:

def remove_item(initial_hash, removed_item) 
  initial_hash.delete(removed_item)
  return initial_hash
end


# Method to update the quantity of an item
# input:
# steps:
# output:

def update_item(initial_hash, updated_item, new_amount)
  initial_hash[updated_item] = new_amount
  return initial_hash
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print_list(initial_hash)
  initial_hash.each do |item, amount|
    puts "You need #{amount} #{item}."
  end
end




initial_hash = create_list("carrots apples cereal pizza")

add_item(initial_hash, "oranges")
initial_hash

remove_item(initial_hash, "carrots")

update_item(initial_hash, "cereal", 3)

print_list(initial_hash)