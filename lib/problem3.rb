class Problem3

  attr_accessor :factor_array, :prime_array

  def initialize
    @factor_array = []
    @prime_array = []
  end

  # find all the factors of a number
  def num_factors(num)
    # cycle through all the numbers between 0 and num and test whether or not that number is a factor of num
    for i in (1..num) do
      # if the current number is a factor of num then push that value to an array which stores the factors of num
      if num % i == 0
        @factor_array.push i
      end
    end
    # for each factor of our num, we want to test whether or not that is a prime factor or not
    @factor_array.each do |factor|
      # set up an empty array which will store the factors of each factor of num
      test_prime_array = []
       # find the factors for each factor of num
      for j in (1..factor) do
        if factor % j == 0
          test_prime_array.push j
        end
      end
      # if the length of test_prime_array = 2 then this factor is a prime factor
      if test_prime_array.length == 2
        @prime_array.push factor
      end
    end
    return @prime_array.max
  end
end

val = Problem3.new
val.num_factors(7678798)
