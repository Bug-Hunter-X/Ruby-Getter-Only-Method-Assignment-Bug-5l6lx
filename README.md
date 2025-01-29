# Ruby Getter-Only Method Assignment Bug

This repository demonstrates a subtle bug that can occur in Ruby when a method is defined as a getter but is treated as a setter unintentionally.

## The Bug

The `MyClass` in `bug.rb` defines a `value` method that acts as a getter, returning the internal `@value` instance variable.  However, attempting to assign a new value using `my_object.value = 20` does not modify the internal state.  This is because Ruby does not automatically create a setter. The assignment instead creates a new local variable. 

## The Solution

`bugSolution.rb` provides a corrected version of `MyClass`, using an attr_accessor to properly define a getter and setter for the `@value` instance variable. Now, assigning to `my_object.value` will correctly update the internal state.

## How to run the examples
1. Clone the repo
2. Navigate to the repo directory in your terminal.
3. Run `ruby bug.rb` to see the buggy behavior.
4. Run `ruby bugSolution.rb` to see the corrected behavior.