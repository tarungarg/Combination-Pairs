# Combination::Pairs

Input: K, N (where 0 < N < ∞, 0 < K < ∞, and K <= N)
Output: Number of possible equations of K numbers whose sum is N

Example Input:
N=10 K=3
Example Output:
Total unique equations = 8
  1 + 1 + 8 = 10
  1 + 2 + 7 = 10
  1 + 3 + 6 = 10
  1 + 4 + 5 = 10
  2 + 2 + 6 = 10
  2 + 3 + 5 = 10
  2 + 4 + 4 = 10
  3 + 3 + 4 = 10
For reference, N=100, K=3 should have a result of 833 unique sets 

Its performance is better than the repeated-combination of array module but need to be optimized. So please contribute in it make it more optimized.

Now it is working for k =4 and n<1000 and take time for k > 4 so please contribute to make it more effective.

## Installation

Add this line to your application's Gemfile:

    gem 'combination-pairs'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install combination-pairs

## Usage

There are basic two varibales n and k
n should greater than k

params = {:n =>100, :k =>4}
c = Combination::Pairs::Equation.new(params)
c.create_equations


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
