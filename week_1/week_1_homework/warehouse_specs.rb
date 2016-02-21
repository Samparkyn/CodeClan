require ('minitest/autorun')
require_relative('warehouse_functions')

class TestHomework < MiniTest::Test

  def setup
    
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
  end

def test_find_product_from_bay
  query = find_product_from_bay(:c9)
  assert_equal("shoe lace", query)
end

def test_find_bay_from_product
  query  = find_bay_from_product("sharpie")
  assert_equal(:b2, query)
end

def test_find_multiple_products_from_bays
  query = find_multiple_products_from_bays([:b10, :a9, :a5])
  assert_equal(["cookie jar", "glow stick", "rubber duck"], query)
end

def test_find_multiple_bays_from_products
  query = find_multiple_bays_from_products(["shoe lace", "cookie jar", "bookmark"])
  assert_equal([:c9, :b10, :a7], query)
end

end

