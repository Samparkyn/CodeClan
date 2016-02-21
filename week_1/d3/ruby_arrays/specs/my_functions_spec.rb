require('minitest/autorun')
require_relative('../my_functions')

class TestMyFunctions < MiniTest::Test

  def test_grab_first
    result = grab_first( [1,2,3,4,5] )
    assert_equal( 1 , result)
  end

  def test_index_at()
    result = index_at([1,2,3,4,5], 3)
    assert_equal(4, result)
  end 

  def test_last_index()
    result = last_index([1,2,3,4,5], [1,2,3,4,5].last)
    assert_equal(5, result)
  end






end