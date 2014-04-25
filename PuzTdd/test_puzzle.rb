# Author: Jennifer Brummett
# Date: June 8, 2011

require 'test/unit'
require './puzzle.rb'

class Test_Puzzle < Test::Unit::TestCase
  def setup
    @p=Puzzle.new(3,3)
		@p.set_puzzle('1234 5678')
  end

	def test_set_puzzle
	  assert_equal(@p.get_puzzle,'1234 5678','set puzzle is broken')
  end

	def test_to_s
		assert_equal(@p.to_s, "\t1\t2\t3\n\n\t4\t \t5\n\n\t6\t7\t8\n\n", 'string is not returned')
  end

  def test_get_puzzle
    assert_equal(@p.get_puzzle, '1234 5678', 'didn\'t get puzzle')
  end

	def test_move_up
		@p.move_up
		assert_equal(@p.get_puzzle, '1 3425678', 'move up needs work')
    @p.move_up
		assert_equal(@p.get_puzzle, '1 3425678', 'move up needs work')
	end

  def test_move_down
    @p.move_down
    assert_equal(@p.get_puzzle,'1234756 8', 'move down needs work')
    @p.move_down
    assert_equal(@p.get_puzzle,'1234756 8', 'move down needs work')
  end

  def test_move_right
    @p.move_right
    assert_equal(@p.get_puzzle,'12345 678', 'move right needs work')
     @p.move_right
    assert_equal(@p.get_puzzle,'12345 678', 'move right needs work')
  end

   def test_move_left
    @p.move_left
    assert_equal(@p.get_puzzle,'123 45678', 'move left needs work')
     @p.move_left
    assert_equal(@p.get_puzzle,'123 45678', 'move left 2nd time needs work')
   end

  def test_lowrt_corner
    @p.move_down
    assert_equal(@p.get_puzzle,'1234756 8', 'move down needs work')
    @p.move_right
    assert_equal(@p.get_puzzle,'12347568 ', 'move right needs work')
    @p.move_right
    assert_equal(@p.get_puzzle,'12347568 ', 'move right twice needs work')
    @p.move_up
    assert_equal(@p.get_puzzle, '12347 685', 'check low right corner')
    @p.move_left
    assert_equal(@p.get_puzzle, '1234 7685', 'check low right corner')
  end

  def test_toplf_corner
    @p.move_left
    assert_equal(@p.get_puzzle,'123 45678', 'move left needs work')
    @p.move_up
    assert_equal(@p.get_puzzle,' 23145678', 'move left needs work')
    @p.move_left
    assert_equal(@p.get_puzzle,' 23145678', 'move left needs work')
    @p.move_right
    assert_equal(@p.get_puzzle,'2 3145678', 'top right corner needs work')
    @p.move_down
    assert_equal(@p.get_puzzle,'2431 5678', 'top right corner needs work')
  end

  def test_zigzag
    @p.move_right
    assert_equal(@p.get_puzzle,'12345 678', 'move right needs work')
    @p.move_up
    assert_equal(@p.get_puzzle,'12 453678', 'zigzag needs work')
    @p.move_up
    assert_equal(@p.get_puzzle,'12 453678', 'zigzag needs work')
    @p.move_left
    assert_equal(@p.get_puzzle,'1 2453678', 'zigzag needs work')
    @p.move_down
    assert_equal(@p.get_puzzle,'1524 3678', 'zigzag needs work')
    @p.move_left
     assert_equal(@p.get_puzzle,'152 43678', 'zigzag needs work')
    @p.move_down
     assert_equal(@p.get_puzzle,'152643 78', 'zigzag needs work')
    @p.move_down
     assert_equal(@p.get_puzzle,'152643 78', 'zigzag needs work')
    @p.move_right
     assert_equal(@p.get_puzzle,'1526437 8', 'zigzag needs work')
    @p.move_down
    assert_equal(@p.get_puzzle,'1526437 8', 'zigzag needs work')
    @p.move_up
     assert_equal(@p.get_puzzle,'1526 3748', 'zigzag needs work')
  end

  def test_solve_puzzle
    @p.solve_puzzle
    assert_equal(@p.get_puzzle,'1234 5678','solve puzzle needs attention')
  end
end