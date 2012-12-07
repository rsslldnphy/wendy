## Wendy ##
###An elegant way to chain methods in Ruby ##



Simply include `Wendy` in the class you want to chain methods in. You now have access to the `wend` method.

The `wend` method accepts as its argument the initial parameter for the chain. 

You then 'wend' this argument through multiple methods by chaining them with the `through` and `and` methods.

When you're done, call `result` or `and_return` to get the final result.

Here's an example:

    class MathsFunctions
      include Wendy
      
      def double(x)
        x + x
      end
      
      def square(x)
        x * x
      end
      
      def two_x_squared(x)
        wend(x).through(:double).and(:square).and_return
      end
      
    end
    
    MathsFunctions.new.two_x_squared(5) # => 100



