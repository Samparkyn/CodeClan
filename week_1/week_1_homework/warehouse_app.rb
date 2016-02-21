require_relative('./warehouse_functions')


@warehouse = {

  a1: "needle",
  a2: "stop sign",
  a3: "blouse",
  a4: "hanger",
  a5: "rubber duck",
  a6: "shovel",
  a7: "bookmark",
  a8: "model car",
  a9: "glow stick",
  a10: "rubber band",

  b1: "tyre swing",
  b2: "sharpie",
  b3: " picture frame",
  b4: "photo_album",
  b5: "nail filer",
  b6: "tooth paste",
  b7: "bath fizzers",
  b8: "tissue box",
  b9: "deodorant",
  b10: "cookie jar",

c1: "rusty nail",
c2: "drill press",
c3: "chalk",
c4: "word search",
c5: "thermometer",
c6: "face wash",
c7: "paint brush",
c8: "candy wrapper",
c9: "shoe lace",
c10: "leg warmers"
}

puts "Welcome to your Warehouse product selector.\n Please enter which product you would like to collect:\n"
desired_items = gets.chomp.to_s
items_list = []


def check_item_available(desired_items)
  if @warehouse.has_value?(desired_items) 
    puts "You're in luck, that product is in stock"
  else 
    puts "Nope sorry, that product appears to be out of stock. Try another : "
  end
end

check_item_available(desired_items)
items_list << desired_items

#ask if user wants to add another product
puts "Would you like to collect another product? Enter y/n"
answer = gets.chomp.downcase

#until the answer is no, keeps getting more input of new products
until answer == "n"
  puts "Please enter the next item:\n"
  desired_items = gets.chomp.downcase
#then push the new products to the items list
  items_list << desired_items

  desired_items = check_item_available(desired_items)
  puts "Would you like to add another item? Enter y/n"
  answer = gets.chomp.downcase
end

desired_items = check_item_available(desired_items)

#returns all the selected products. Although I was unsure how to get it to return only the products that are availble.
puts "Your items are #{items_list}. \n "
#now returns where the items are found
puts "Your items are in bay #{find_multiple_bays_from_products(items_list)}"
puts "Thanks for using Warehouse product selector."






