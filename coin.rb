# Imagine you landed a new job as a cashier...
# Your quirky boss found out that you're a programmer and has a weird request about something they've been wondering for a long time.
# Write a function that, given:
# 1. an amount of money
# 2. a list of coin denominations
# computes the number of ways to make amount of money with coins of the available denominations.
# Example: for amount=4 (4¢) and denominations=[1,2,3] (1¢, 2¢ and 3¢), your program would output 4—the number of ways to make 4¢ with those denominations:
# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢

# See - https://www.interviewcake.com/question/coin

class Coin

  def initialize(amount, denominations)
    @amount, @denominations = amount, denominations.sort.reverse
  end

  def calculate
    # Set all the possibilities (one entry for each number up to the total amount + 1)
    @possible = Array.new(@amount + 1, 0)
    @possible[0] = 1

    # Loop over the possible denominations
    @denominations.each do |den|
      den.upto(@amount).each do |higher_amount|
        # Starting from the smallest denomination
        # Calculate the number of possibilities
        @possible[higher_amount] += @possible[higher_amount - den]
      end
    end

    @possible[@amount]
  end

end

puts Coin.new(5, [1, 3, 5]).calculate