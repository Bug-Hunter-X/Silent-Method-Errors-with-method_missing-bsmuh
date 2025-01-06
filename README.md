# Silent Method Errors in Ruby using method_missing

This example demonstrates a potential issue with Ruby's `method_missing` method. While useful for dynamic method handling, it can silently swallow errors, making debugging difficult.  The `method_missing` method provides a way to handle calls to methods that are not defined for a class. However, if you are not careful in how you implement it, it can silently swallow exceptions, potentially masking errors.

The included `bug.rb` file shows this behavior.  `bugSolution.rb` offers a better approach to handling undefined methods.