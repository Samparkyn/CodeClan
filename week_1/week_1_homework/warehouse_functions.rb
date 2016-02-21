
def find_product_from_bay(bay)
  return @warehouse[bay]
end

def find_bay_from_product(product)
  return @warehouse.key(product)
end

def find_multiple_products_from_bays(bays)
  products_found = []
  bays.each do |bay|
    products_found << @warehouse[bay]
  end
  return products_found
end

def find_multiple_bays_from_products(products)
  bays_found = []
  products.each do |product|
    bays_found << @warehouse.key(product)
  end
  return bays_found
end







