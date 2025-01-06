```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' not found."
  end

end

object = MyClass.new(10)
puts object.value # This works fine
puts object.nonexistent_method #This will execute the method_missing method, which will print "Method 'nonexistent_method' not found." to the console, but will not raise an exception.
puts object.another_nonexistent_method(1,2,3) #This will also execute the method_missing method, but will print "Method 'another_nonexistent_method' not found." to the console and won't raise an exception. 
```