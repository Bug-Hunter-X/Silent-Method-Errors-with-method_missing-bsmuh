```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def method_missing(method_name, *args, &block)
    raise NoMethodError, "Method '#{method_name}' not found." 
  end

end

object = MyClass.new(10)
puts object.value
begin
  puts object.nonexistent_method
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
begin
  puts object.another_nonexistent_method(1,2,3)
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
```