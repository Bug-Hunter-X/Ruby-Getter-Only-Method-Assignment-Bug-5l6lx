```ruby
class MyClass
  attr_accessor :value # Use attr_accessor to create both getter and setter

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20 # This now correctly modifies the internal value
puts my_object.value # Output: 20
```