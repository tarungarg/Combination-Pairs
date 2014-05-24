require "combination/pairs/version"

module Combination
  module Pairs
    class Equation
      def initialize(params)
        @arr=[]
        @n = params[:n]
        @k = params[:k]
      end

      #To create possible equations
      def create_equations
        return "Please Enter value of n and k" if @k.blank? && @n.blank?
        begin
          Integer(@k)
        rescue
          return "Error: Please enter any +ve integer value of k"
        end
        begin
          Integer(@n)
        rescue
          return "Error: Please enter any +ve integer value of n"
        end
        return "Please enter k < n" if @n < @k
        create_equations_sum
      end

      def create_equations_sum
        aar = []
        @arr = []
        @list_elements=(1..@n).to_a
        (1..@k-1).each do |i|
          aar << [*0..@n-1]
        end
        traverse([], aar, 0)
        return @arr.uniq #return result
      end

      #To check sum
      def generate_sum(*args)
        new_elements = []
        total= 0
        args.flatten.each do |arg|
          total += @list_elements[arg]
          new_elements << @list_elements[arg]
        end
        if total < @n
          new_elements << @n - total
          @arr << new_elements.sort
        else
          return
        end
      end

      def innerloop(arrayOfCurrentValues)
        generate_sum(arrayOfCurrentValues)
      end

      #Recursive method to create dynamic nested loops.
      def traverse(accumulated,params, index) 
        if (index==params.size)
          return innerloop(accumulated) 
        end
        currentParam = params[index]
        currentParam.each do |currentElementOfCurrentParam|
          traverse(accumulated+[currentElementOfCurrentParam],params, index+1)
        end
      end
    end
  end
end
