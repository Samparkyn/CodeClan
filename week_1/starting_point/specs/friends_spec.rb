require( 'minitest/autorun' )
require_relative( '../friends' ) 

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_fav_tv_show
   result = fav_tv_show(@person5)
    assert_equal("Scrubs", result)
  end

def test_like_food
  assert_equal(true, like_food?("spinach", @person5))
end

def test_new_friend
  result = new_friend(@person5, "Sam")
  assert_equal(["Sam"], result)
end

def test_delete_friend
  result = delete_friend(@person4, "sam")
  assert_equal(["Jay", "Marc"], result)
end

def test_money_total
  result = money_total(@people)
  assert_equal(143, result)
end

def test_loan_money
  loan_money(@person5, @person2, 10)
  assert_equal(90, @person5[:monies])
  assert_equal(12, @person2[:monies])
end

def test_all_fav_foods
  foods = ["charcuterie", "soup", "bread", "ratatouille", "stew", "spaghetti", "spinach"]
  assert_equal(foods, all_fav_foods(@people))
end

def test_no_friends
  assert_equal([@person5], no_friends(@people))
end


end













