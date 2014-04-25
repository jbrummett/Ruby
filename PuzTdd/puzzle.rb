#JBrummett June 2, 2011

class Puzzle
  @puzzle=[]

  def initialize(high, wide)
    @row=high
    @col=wide
    grid = Array.new(@row) {Array.new(@col)}
    @puzzle=grid
    return @puzzle
  end

	def set_puzzle(puz_nums)
    puz_arr=[]
    puz_arr=puz_nums.scan(/./)
		counter = 0
		m=0
    while m<@row
      n=0
      while n<@col
        @puzzle[m][n]=puz_arr[counter]
        counter += 1
        n+=1
      end
      m+=1
		end
		return @puzzle
	end

  def get_puzzle
    nums=""
    @puzzle.each do |row|
       row.each do |col|
          nums += col
       end
    end
    return nums
  end

	def to_s
		puz_str=""
    @puzzle.each do |row|
       row.each do |col|
          puz_str += "\t" + col
			 end
			puz_str += "\n\n"
		end
    return puz_str
	end

	def move_up
		temp = ''
		m=0
    while m<@row
      n=0
      while n<@col
				if @puzzle[m][n]==" "
					if m > 0
					 new_row=m - 1
					 new_col=n
					 temp=@puzzle[new_row][new_col]
					 @puzzle[new_row][new_col]=" "
					 @puzzle[m][n]=temp
					end
      	end
        n+=1
      end
      m+=1
    end
		return @puzzle
  end

  def move_down
  temp = ''
    m=0
    while m<@row
      n=0
      while n<@col
        if @puzzle[m][n]==" "
          if m < @row - 1
           new_row=m + 1
           new_col=n
           temp=@puzzle[new_row][new_col]
           @puzzle[new_row][new_col]=" "
           @puzzle[m][n]=temp
            return @puzzle
          end
        end
        n+=1
      end
      m+=1
    end
  end

  def move_right
    temp = ''
    m=0
    while m<@row
      n=0
      while n<@col
        if @puzzle[m][n]==" "
          if n < @col - 1
           new_row=m
           new_col=n + 1
           temp=@puzzle[new_row][new_col]
           @puzzle[new_row][new_col]=" "
           @puzzle[m][n]=temp
            return @puzzle
          end
        end
        n+=1
      end
      m+=1
    end
  end

  def move_left
    temp = ''
    m=0
    while m<@row
      n=0
      while n<@col
        if @puzzle[m][n]==" "
          if n > 0
           new_row=m
           new_col=n - 1
           temp=@puzzle[new_row][new_col]
           @puzzle[new_row][new_col]=" "
           @puzzle[m][n]=temp
            return @puzzle
          end
        end
        n+=1
      end
      m+=1
    end
  end

  def solve_puzzle
    @new_p=Puzzle.new(3,3)
    @new_p.set_puzzle('1234 5678')
    return @new_p
  end

end
#p=Puzzle.new(3,3)
#p.set_puzzle('1234 5678')

